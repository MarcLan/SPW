resource "huaweicloud_cts_tracker" "default" {
  lts_enabled = true
  enabled = tostring(try(var.cts_switch, true))
}

resource "huaweicloud_cts_data_tracker" "default" {
  name = "cts_data_tracker"
  data_bucket = var.data_bucket_name
  lts_enabled = true
  enabled = tostring(try(var.cts_switch, true))
}

resource "huaweicloud_cts_tracker" "security_system_tracker" {
  bucket_name = var.security_cts_sys_bucket_name
  lts_enabled = true
  validate_file = true
  kms_id = var.obs_kms_key
  enabled = tostring(try(var.cts_switch, true))
}

resource "huaweicloud_cts_data_tracker" "security_data_tracker" {
  name = "cts_data_tracker"
  data_bucket = var.security_cts_data_bucket_name
  bucket_name = var.security_obs_access_log_bucket
  file_prefix = var.security_obs_access_log_file_prefix
  lts_enabled = true
  validate_file = true
  enabled = tostring(try(var.cts_switch, true))
}

resource "huaweicloud_obs_bucket" "obs_bucket" {
  bucket = var.bucket_name
  storage_class = "STANDARD"
  acl    = "private"
  multi_az = true
  encryption = true
  force_destroy = true
  versioning = true
  kms_key_id = var.obs_kms_key_id
  # logging {
  #   target_bucket = var.obs_access_logging_bucket_name
  #   target_prefix = var.obs_access_logging_target_prefix
  # }
}