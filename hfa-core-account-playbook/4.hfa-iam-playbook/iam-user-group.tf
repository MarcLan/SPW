module "admin_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.admin_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "developer_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.developer_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "operator_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.operator_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "system_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.system_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "devops_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.devops_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "database_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.database_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "security_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.security_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}
module "network_user_group" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user-group"

  user_group_name = var.network_group_name

  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }
}