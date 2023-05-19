resource "huaweicloud_kms_key" "obs_key" {
  key_alias       = "obs-key"
  key_algorithm   = "AES_256"
  pending_days    = "7"
  key_description = "Encryption key for OBS Bucket"
  is_enabled      = true
  rotation_enabled = true
  rotation_interval = var.obs_key_rotation_interval
}

module "transit_service_cts_centralized" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-centralized"
  
  region = module.global_variables.default_region
  centralized_bucket_name = var.transit_bucket_name
  obs_kms_keyid = huaweicloud_kms_key.obs_key.id
  cts_centralized_rotation_days = var.cts_centralized_rotation_days
  
  collected_account_name = module.global_variables.transit_service_root_account_name
  collected_access_key = module.global_variables.transit_service_account_ak
  collected_secret_key = module.global_variables.transit_service_account_sk

  centralized_account_name = module.global_variables.security_service_root_account_name
  centralized_access_key = module.global_variables.security_service_account_ak
  centralized_secret_key = module.global_variables.security_service_account_sk
}

module "common_service_cts_centralized" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-centralized"
  
  region = module.global_variables.default_region
  centralized_bucket_name = var.common_bucket_name
  obs_kms_keyid = huaweicloud_kms_key.obs_key.id
  cts_centralized_rotation_days = var.cts_centralized_rotation_days
  
  collected_account_name = module.global_variables.common_service_root_account_name
  collected_access_key = module.global_variables.common_service_account_ak
  collected_secret_key = module.global_variables.common_service_account_sk

  centralized_account_name = module.global_variables.security_service_root_account_name
  centralized_access_key = module.global_variables.security_service_account_ak
  centralized_secret_key = module.global_variables.security_service_account_sk
}

module "centralized_iam_service_cts_centralized" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-centralized"
  
  region = module.global_variables.default_region
  centralized_bucket_name = var.centralized_iam_bucket_name
  obs_kms_keyid = huaweicloud_kms_key.obs_key.id
  cts_centralized_rotation_days = var.cts_centralized_rotation_days
  
  collected_account_name = module.global_variables.centralized_iam_root_account_name
  collected_access_key = module.global_variables.centralized_iam_account_ak
  collected_secret_key = module.global_variables.centralized_iam_account_sk

  centralized_account_name = module.global_variables.security_service_root_account_name
  centralized_access_key = module.global_variables.security_service_account_ak
  centralized_secret_key = module.global_variables.security_service_account_sk
}