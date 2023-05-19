### for common Service
variable common_service_vpc { default = "common_service_vpc" }
variable common_service_vpc_cidr { default = "10.16.0.0/16" }
variable common_private_subnet_cidr { default = "10.16.0.0/22" }
variable common_er_subnet_cidr { default = "10.16.4.0/22" }

### for security Service
variable security_service_vpc { default = "security_service_vpc" }
variable security_service_vpc_cidr { default = "10.17.0.0/16" }
variable security_private_subnet_cidr { default = "10.17.0.0/22" }
variable security_er_subnet_cidr { default = "10.17.4.0/22" }

### for transit service prod
variable transit_service_prod_ingress_vpc { default = "transit_prod_ingress_vpc" }
variable transit_prod_ingress_vpc_cidr { default = "10.18.0.0/16" }
variable transit_prod_ingress_subnet_cidr { default = "10.18.0.0/22" }
variable transit_prod_ingress_er_subnet_cidr { default = "10.18.4.0/22" }

variable transit_service_prod_egress_vpc { default = "transit_prod_egress_vpc" }
variable transit_prod_egress_vpc_cidr { default = "10.19.0.0/16" }
variable transit_prod_egress_subnet_cidr  { default = "10.19.0.0/22" }
variable transit_prod_egress_er_subnet_cidr { default = "10.19.4.0/22" }
variable transit_prod_egress_nat_gw_name  { default = "egress_prod_nat_gw" }

### for transit service non-prod
variable transit_service_nonprod_ingress_vpc { default = "transit_nonprod_ingress_vpc" }
variable transit_nonprod_ingress_vpc_cidr { default = "10.20.0.0/16" }
variable transit_nonprod_ingress_subnet_cidr { default = "10.20.0.0/22" }
variable transit_nonprod_ingress_er_subnet_cidr { default = "10.20.4.0/22" }

variable transit_service_nonprod_egress_vpc { default = "transit_nonprod_egress_vpc" }
variable transit_nonprod_egress_vpc_cidr { default = "10.21.0.0/16" }
variable transit_nonprod_egress_subnet_cidr  { default = "10.21.0.0/22" }
variable transit_nonprod_egress_er_subnet_cidr { default = "10.21.4.0/22" }
variable transit_nonprod_egress_nat_gw_name  { default = "egress_nonprod_nat_gw" }

variable transit_prod_vpc { default = "transit_prod_vpc" }
variable transit_prod_vpc_cidr { default = "10.22.0.0/16" }
variable transit_prod_private_subnet_cidr { default = "10.22.0.0/22" }

variable transit_nonprod_vpc { default = "transit_nonprod_vpc" }
variable transit_nonprod_vpc_cidr { default = "10.23.0.0/16" }
variable transit_nonprod_private_subnet_cidr { default = "10.23.0.0/22" }

### for production account
variable prod_env_vpc { default = "prod_env_vpc" }
variable prod_env_vpc_cidr { default = "10.100.0.0/16" }
variable prod_private_subnet_cidr { default = "10.100.0.0/22" }
variable prod_cce_subnet_cidr { default = "10.100.4.0/22" }
variable prod_database_subnet_cidr { default = "10.100.10.0/24" }
variable prod_er_subnet_cidr { default = "10.100.16.0/22" }