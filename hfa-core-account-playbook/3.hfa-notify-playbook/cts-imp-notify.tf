module "transit_service_cts_notify" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-notification"
  providers = {
    huaweicloud = huaweicloud.transit_service
  }

  root_account_name = module.global_variables.transit_service_root_account_name
  smn_topic_name = var.transit_smn_topic_name
  cts_important_notify_email = var.cts_notify_email
  # cts_important_notify_phone = var.cts_notify_phone
}

module "common_service_cts_notify" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-notification"
  providers = {
    huaweicloud = huaweicloud.common_service
  }
  root_account_name = module.global_variables.common_service_root_account_name
  smn_topic_name = var.common_smn_topic_name
  cts_important_notify_email = var.cts_notify_email
  # cts_important_notify_phone = var.cts_notify_phone
}

module "security_service_cts_notify" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-notification"
  providers = {
    huaweicloud = huaweicloud.security_service
  }

  root_account_name = module.global_variables.security_service_root_account_name
  smn_topic_name = var.security_smn_topic_name
  cts_important_notify_email = var.cts_notify_email
  # cts_important_notify_phone = var.cts_notify_phone
}

module "centralized_iam_service_cts_notify" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-notification"
  providers = {
    huaweicloud = huaweicloud.centralized_iam_service
  }

  root_account_name = module.global_variables.centralized_iam_account_name
  smn_topic_name = var.centralized_iam_smn_topic_name
  cts_important_notify_email = var.cts_notify_email
  # cts_important_notify_phone = var.cts_notify_phone
}