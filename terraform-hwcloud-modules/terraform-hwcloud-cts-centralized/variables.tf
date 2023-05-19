variable "region" {
  description = "Region"
  type        = string
  default     = ""
}
variable "collected_account_name" {
  description = "Collected Account Name"
  type        = string
  default     = ""
}
variable "collected_access_key" {
  description = "Collected AK"
  type        = string
  default     = ""
}
variable "collected_secret_key" {
  description = "Collected SK"
  type        = string
  default     = ""
}
variable "centralized_account_name" {
  description = "Centralized Account Name"
  type        = string
  default     = ""
}
variable "centralized_access_key" {
  description = "Centralized AK"
  type        = string
  default     = ""
}
variable "centralized_secret_key" {
  description = "Centralized SK"
  type        = string
  default     = ""
}
variable "centralized_bucket_name" {
  description = "Centralized bucket name to store CTS logs in security account"
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
variable "cts_centralized_rotation_days" {
  description = "CTS Rotation Days, logs in OBS will be deleted upon expiration"
  type        = string
  default     = "180"
}
variable "obs_kms_keyid" {
  description = "KMS Key used to encrypt centralized OBS Bucket"
  type        = string
  default     = ""
}