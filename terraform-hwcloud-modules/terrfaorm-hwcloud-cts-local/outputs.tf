output "cts_sys_id" {
  value       = huaweicloud_cts_tracker.default.id
  description = "CTS System Tracker ID"
}

output "cts_data_id" {
  value       = huaweicloud_cts_data_tracker.default.id
  description = "CTS Data Tracker ID"
}

output "obs_centralized_bucket" {
  value       = huaweicloud_obs_bucket.obs_centralized.id
  description = "OBS Bucket Name"
}

output "obs_bucket" {
  value       = huaweicloud_obs_bucket.obs_bucket.id
  description = "OBS Bucket Name"
}

output "obs_kms_key_id" {
  value = huaweicloud_kms_key.obs_key.id
}