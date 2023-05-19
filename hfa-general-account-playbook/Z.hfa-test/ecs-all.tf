# Create Security Group

resource "huaweicloud_networking_secgroup" "sg_common" {
  provider = huaweicloud.common_service
  name = "sg-icmp"

}
resource "huaweicloud_networking_secgroup_rule" "sg_rule_common" {
  provider = huaweicloud.common_service
  security_group_id = huaweicloud_networking_secgroup.sg_common.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
}

resource "huaweicloud_networking_secgroup" "sg_security" {
  provider = huaweicloud.security_service
  name = "sg-icmp"

}
resource "huaweicloud_networking_secgroup_rule" "sg_rule_security" {
  provider = huaweicloud.security_service
  security_group_id = huaweicloud_networking_secgroup.sg_security.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
}

resource "huaweicloud_networking_secgroup" "sg_transit" {
  provider = huaweicloud.transit_service
  name = "sg-icmp"

}
resource "huaweicloud_networking_secgroup_rule" "sg_rule_transit" {
  provider = huaweicloud.transit_service
  security_group_id = huaweicloud_networking_secgroup.sg_transit.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
}

resource "huaweicloud_networking_secgroup" "sg_prod_env" {
  provider = huaweicloud.prod_env
  name = "sg-icmp"

}
resource "huaweicloud_networking_secgroup_rule" "sg_rule_prod_env" {
  provider = huaweicloud.prod_env
  security_group_id = huaweicloud_networking_secgroup.sg_prod_env.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
}

### Create ECS

# resource "huaweicloud_compute_instance" "ecs-common" {
#   provider = huaweicloud.common_service
#   name              = "ecs-common"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_common.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.common_private_subnet_id
#     fixed_ip_v4  = "10.16.0.101"
#   }
# }

# resource "huaweicloud_compute_instance" "ecs-security" {
#   provider = huaweicloud.security_service
#   name              = "ecs-security"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_security.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.security_private_subnet_id
#     fixed_ip_v4  = "10.17.0.101"
#   }
# }

resource "huaweicloud_compute_instance" "ecs-transit-prod-ingress" {
  provider = huaweicloud.transit_service
  name              = "ecs-transit-prod-ingress"
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  user_data =         base64encode(file("user_data.sh"))

  network {
    uuid = data.terraform_remote_state.network.outputs.transit_prod_ingress_subnet_id
    fixed_ip_v4  = "10.18.0.101"
  }
}

# resource "huaweicloud_compute_instance" "ecs-transit-prod-egress" {
#   provider = huaweicloud.transit_service
#   name              = "ecs-transit-prod-egress"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.transit_prod_egress_subnet_id
#     fixed_ip_v4  = "10.19.0.101"
#   }
# }

# resource "huaweicloud_compute_instance" "ecs-transit-nonprod-ingress" {
#   provider = huaweicloud.transit_service
#   name              = "ecs-transit-nonprod-ingress"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.transit_nonprod_ingress_subnet_id
#     fixed_ip_v4  = "10.20.0.101"
#   }
# }

# resource "huaweicloud_compute_instance" "ecs-transit-nonprod-egress" {
#   provider = huaweicloud.transit_service
#   name              = "ecs-transit-nonprod-egress"
#   image_id          = data.huaweicloud_images_image.myimage.id
#   flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   security_group_ids   = [ huaweicloud_networking_secgroup.sg_transit.id ]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   user_data =         base64encode(file("user_data.sh"))

#   network {
#     uuid = data.terraform_remote_state.network.outputs.transit_nonprod_egress_subnet_id
#     fixed_ip_v4  = "10.21.0.101"
#   }
# }

resource "huaweicloud_compute_instance" "ecs-prod_env" {
  provider = huaweicloud.prod_env
  name              = "ecs-prod-env"
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids   = [ huaweicloud_networking_secgroup.sg_prod_env.id ]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  user_data =         base64encode(file("user_data.sh"))

  network {
    uuid = data.terraform_remote_state.network.outputs.prod_private_subnet_id
    fixed_ip_v4  = "10.100.0.101"
  }
}