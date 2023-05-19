## for transit account
module "transit_admin_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.admin_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.admin_project_roles

  providers = {
    huaweicloud = huaweicloud.transit_service
  }
}
module "transit_network_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.network_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.network_project_roles

  providers = {
    huaweicloud = huaweicloud.transit_service
  }
}
module "transit_security_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.security_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.transit_security_project_roles

  providers = {
    huaweicloud = huaweicloud.transit_service
  }
}

## for security operation account
module "security_admin_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.admin_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.admin_project_roles

  providers = {
    huaweicloud = huaweicloud.security_service
  }
}
module "security_security_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.security_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.transit_security_project_roles

  providers = {
    huaweicloud = huaweicloud.security_service
  }
}

## for common service account
module "common_admin_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.admin_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.admin_project_roles

  providers = {
    huaweicloud = huaweicloud.common_service
  }
}
module "common_security_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.security_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.common_security_project_roles

  providers = {
    huaweicloud = huaweicloud.common_service
  }
}
module "common_system_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.system_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.system_project_roles

  providers = {
    huaweicloud = huaweicloud.common_service
  }
}
module "common_devops_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.devops_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.common_devops_project_roles

  providers = {
    huaweicloud = huaweicloud.common_service
  }
}

## for production account
module "prod_admin_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.admin_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.admin_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_developer_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.developer_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.developer_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_operator_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.operator_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.operator_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_system_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.system_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.system_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_devops_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.devops_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.devops_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_database_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.database_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.database_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_network_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.network_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.network_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}
module "prod_security_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.security_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.general_security_project_roles

  providers = {
    huaweicloud = huaweicloud.prod_env
  }
}

## for non-production account
module "nonprod_admin_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.admin_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.admin_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_developer_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.developer_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.developer_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_operator_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.operator_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.operator_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_system_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.system_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.system_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_devops_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.devops_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.devops_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_database_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.database_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.database_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_network_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.network_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.network_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}
module "nonprod_security_agency" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-agency"

  region = module.global_variables.default_region
  agency_name = "${var.security_agency_name}"
  centralized_iam_account_name = module.global_variables.centralized_iam_root_account_name
  project_role = var.general_security_project_roles

  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
}