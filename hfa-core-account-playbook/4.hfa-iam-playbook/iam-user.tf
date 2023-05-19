# module "network_user" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user"

#   username = var.network_username
#   user_password = var.user_pwd

#   providers = {
#     huaweicloud = huaweicloud.centralized_iam_service
#   }
# }

# module "compute_user" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user"

#   username = var.compute_username
#   user_password = var.user_pwd

#   providers = {
#     huaweicloud = huaweicloud.centralized_iam_service
#   }
# }

# module "security_user" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user"

#   username = var.security_username
#   user_password = var.user_pwd

#   providers = {
#     huaweicloud = huaweicloud.centralized_iam_service
#   }
# }

# module "database_user" {
#   source = "../../terraform-hwcloud-modules/terraform-hwcloud-iam-user"

#   username = var.database_username
#   user_password = var.user_pwd

#   providers = {
#     huaweicloud = huaweicloud.centralized_iam_service
#   }
# }