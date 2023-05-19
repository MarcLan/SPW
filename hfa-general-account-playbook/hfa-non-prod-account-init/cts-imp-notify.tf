module "nonprod_cts_notify" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-notification"
  providers = {
    huaweicloud = huaweicloud.nonprod_env
  }
  root_account_name = module.global_variables.nonprod_env_account_name
  smn_topic_name = var.nonprod_smn_topic_name
  cts_important_notify_email = var.cts_notify_email
  # cts_important_notify_phone = var.cts_notify_phone
}