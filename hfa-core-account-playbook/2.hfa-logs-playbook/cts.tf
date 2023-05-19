# module "transit_service_cts" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-local" 

#   obs_key_rotation_interval = var.centralized_obs_key_rotation_interval
#   centralized_bucket_name = var.transit_centralized_bucket_name
#   obs_access_logging_bucket_name = var.obs_access_log_bucket_name
#   obs_access_logging_target_prefix = var.obs_access_log_prefix
#   obs_kms_key = var.obs_kms_key_id

#   providers = {
#     huaweicloud = huaweicloud.transit_service
#   }
# }

# module "security_service_cts" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-local" 

#   security_cts_sys_bucket_name = 
#   obs_kms_key = 
#   cts_local_rotation_day = var.cts_local_rotation_day
#   security_cts_data_bucket_name = 
#   security_obs_access_log_bucket = 
#   security_obs_access_log_file_prefix = 
  
#   providers = {
#     huaweicloud = huaweicloud.security_service
#   }
# }

# # module "common_service_cts" {
# #   source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-local" 
# #   cts_local_rotation_day = var.cts_local_rotation_day
# #   #cts_switch = false
# #   providers = {
# #     huaweicloud = huaweicloud.common_service
# #   }
# # }