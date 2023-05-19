variable "cts_switch" {
  description = "CTS wwitch true or false"
  type        = string
  default     = null
}
variable "data_bucket_name" {
  description = "Data bucket to be tracked by CTS data tracker"
  type        = string
  default     = ""
}
variable "security_cts_sys_bucket_name" {
  description = "Bucket name to store the CTS logs in security account"
  type        = string
  default     = ""
}
variable "obs_kms_key" {
  description = "OBS KMS key ID to encrypt the centralized OBS bucket"
  type        = string
  default     = ""
}
variable "security_cts_data_bucket_name" {
  description = "Bucket name that need to be tracked and collect the access logs"
  type        = string
  default     = ""
}
variable "security_obs_access_log_bucket" {
  description = "Bucket name to store the data logs in security account"
  type        = string
  default     = ""
}
variable "security_obs_access_log_file_prefix" {
  description = "File prefix in OBS Access Log bucket"
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "Bucket name in sub-accounts to store the data."
  type        = string
  default     = ""
}
variable "obs_kms_key_id" {
  description = "OBS KMS key ID to encrypt the OBS bucket in several accounts"
  type        = string
  default     = ""
}
# variable "obs_access_logging_bucket_name" {
#   description = "Bucket name to store the OBS access logging in security account"
#   type        = string
#   default     = ""
# }
# variable "obs_access_logging_target_prefix" {
#   description = "The key prefix for the log objects"
#   type        = string
#   default     = ""
# }