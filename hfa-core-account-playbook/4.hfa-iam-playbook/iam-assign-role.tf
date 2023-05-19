module "admin_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.admin_user_group.user_group_id
  assign_policy_id = module.admin_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "developer_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.developer_user_group.user_group_id
  assign_policy_id = module.developer_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "operator_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.operator_user_group.user_group_id
  assign_policy_id = module.operator_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "system_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.system_user_group.user_group_id
  assign_policy_id = module.system_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "devops_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.devops_user_group.user_group_id
  assign_policy_id = module.devops_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "database_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.database_user_group.user_group_id
  assign_policy_id = module.database_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "security_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.security_user_group.user_group_id
  assign_policy_id = module.security_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "network_role_assign" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-assign"

  assign_group_id = module.network_user_group.user_group_id
  assign_policy_id = module.network_custom_policy.custom_policy_id
  assign_domain_id = module.global_variables.centralized_iam_domain_id

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}