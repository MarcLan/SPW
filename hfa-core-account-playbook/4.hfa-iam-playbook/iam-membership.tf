# resource "huaweicloud_identity_group_membership" "network_membership" {
#   provider = huaweicloud.centralized_iam_service
#   group = module.network_user_group.user_group_id
#   users = [
#     module.network_user.user_id
#   ]
# }

# resource "huaweicloud_identity_group_membership" "compute_membership" {
#   provider = huaweicloud.centralized_iam_service
#   group = module.compute_user_group.user_group_id
#   users = [
#     module.compute_user.user_id
#   ]
# }

# resource "huaweicloud_identity_group_membership" "security_membership" {
#   provider = huaweicloud.centralized_iam_service
#   group = module.security_user_group.user_group_id
#   users = [
#     module.security_user.user_id
#   ]
# }

# resource "huaweicloud_identity_group_membership" "database_membership" {
#   provider = huaweicloud.centralized_iam_service
#   group = module.database_user_group.user_group_id
#   users = [
#     module.database_user.user_id
#   ]
# }