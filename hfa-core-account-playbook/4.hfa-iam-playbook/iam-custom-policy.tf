module "admin_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.admin_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.transit_admin_agency.agency_id}",
          "/iam/agencies/${module.security_admin_agency.agency_id}",
          "/iam/agencies/${module.common_admin_agency.agency_id}",
          "/iam/agencies/${module.prod_admin_agency.agency_id}",
          "/iam/agencies/${module.nonprod_admin_agency.agency_id}"
        ]
      }
    }
  ]
}
EOF
}
module "developer_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.developer_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.prod_developer_agency.agency_id}",
          "/iam/agencies/${module.nonprod_developer_agency.agency_id}"
        ]
      }
    }
  ]
}
EOF
}
module "operator_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.operator_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.prod_operator_agency.agency_id}",
          "/iam/agencies/${module.nonprod_operator_agency.agency_id}"
        ]
      }
    }
  ]
}
EOF
}
module "system_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.system_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.common_system_agency.agency_id}",
          "/iam/agencies/${module.prod_system_agency.agency_id}",
          "/iam/agencies/${module.nonprod_system_agency.agency_id}"         
        ]
      }
    }
  ]
}
EOF
}
module "devops_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.devops_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.common_devops_agency.agency_id}",
          "/iam/agencies/${module.prod_devops_agency.agency_id}",
          "/iam/agencies/${module.nonprod_devops_agency.agency_id}" 
        ]
      }
    }
  ]
}
EOF
}
module "database_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.database_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.prod_database_agency.agency_id}",
          "/iam/agencies/${module.nonprod_database_agency.agency_id}" 
        ]
      }
    }
  ]
}
EOF
}
module "security_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.security_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.transit_security_agency.agency_id}",
          "/iam/agencies/${module.security_security_agency.agency_id}",
          "/iam/agencies/${module.common_security_agency.agency_id}",
          "/iam/agencies/${module.prod_security_agency.agency_id}",
          "/iam/agencies/${module.nonprod_security_agency.agency_id}"
        ]
      }
    }
  ]
}
EOF
}
module "network_custom_policy" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-policy"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  custom_policy_name = var.network_policy_name
  custom_policy_content = <<EOF
{
  "Version": "1.1",
  "Statement": [
    {
      "Action": [
        "iam:agencies:assume"
      ],
      "Effect": "Allow",
      "Resource": {
        "uri": [
          "/iam/agencies/${module.transit_network_agency.agency_id}",
          "/iam/agencies/${module.prod_network_agency.agency_id}",
          "/iam/agencies/${module.nonprod_network_agency.agency_id}"
        ]
      }
    }
  ]
}
EOF
}