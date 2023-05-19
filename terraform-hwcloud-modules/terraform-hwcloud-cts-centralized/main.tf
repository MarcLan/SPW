resource "huaweicloud_identity_agency" "agency" {
  provider = huaweicloud.collected
  name                  = "cts_agency_centralized_for_${var.centralized_account_name}"
  delegated_domain_name = var.centralized_account_name  
  project_role {
    project = var.region
    roles   = ["LTS FullAccess"]
  }
  # domain_roles = ["LTS FullAccess"]
}

resource "huaweicloud_obs_bucket" "cts_obs_centralized" {
  provider = huaweicloud.centralized
  bucket = var.centralized_bucket_name
  storage_class = "STANDARD"
  acl    = "private"
  multi_az = true
  encryption = true
  force_destroy = true
  versioning = true
  kms_key_id = var.obs_kms_keyid
  # logging {
  #   target_bucket = var.obs_access_logging_bucket_name
  #   target_prefix = var.obs_access_logging_target_prefix
  # }
  lifecycle_rule {
    name = "cts_rotation"
    enabled = true
    expiration {
      days = var.cts_centralized_rotation_days
    }
  }
}