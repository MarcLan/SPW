## Agency ID
output "transit_admin_agency_id" {
  value       = module.transit_admin_agency.agency_id
  description = "Transit Admin Agency ID"
}
output "transit_network_agency_id" {
  value       = module.transit_network_agency.agency_id
  description = "Transit Network Agency ID"
}
output "transit_security_agency_id" {
  value       = module.transit_security_agency.agency_id
  description = "Transit Security Agency ID"
}

output "security_admin_agency_id" {
  value       = module.security_admin_agency.agency_id
  description = "Security Admin Agency ID"
}
output "security_security_agency_id" {
  value       = module.security_security_agency.agency_id
  description = "Security Security Agency ID"
}

output "common_admin_agency_id" {
  value       = module.common_admin_agency.agency_id
  description = "Common Admin Agency ID"
}
output "common_security_agency_id" {
  value       = module.common_security_agency.agency_id
  description = "Common Security Agency ID"
}
output "common_system_agency_id" {
  value       = module.common_system_agency.agency_id
  description = "Common System Agency ID"
}
output "common_devops_agency_id" {
  value       = module.common_devops_agency.agency_id
  description = "Common Devops Agency ID"
}

output "prod_admin_agency_id" {
  value       = module.prod_admin_agency.agency_id
  description = "Prod Admin Agency ID"
}
output "prod_developer_agency_id" {
  value       = module.prod_developer_agency.agency_id
  description = "Prod Developer Agency ID"
}
output "prod_operator_agency_id" {
  value       = module.prod_operator_agency.agency_id
  description = "Prod Operator Agency ID"
}
output "prod_system_agency_id" {
  value       = module.prod_system_agency.agency_id
  description = "Prod System Agency ID"
}
output "prod_devops_agency_id" {
  value       = module.prod_devops_agency.agency_id
  description = "Prod Devops Agency ID"
}
output "prod_database_agency_id" {
  value       = module.prod_database_agency.agency_id
  description = "Prod Database Agency ID"
}
output "prod_network_agency_id" {
  value       = module.prod_network_agency.agency_id
  description = "Prod Network Agency ID"
}
output "prod_security_agency_id" {
  value       = module.prod_security_agency.agency_id
  description = "Prod Security Agency ID"
}

output "nonprod_admin_agency_id" {
  value       = module.nonprod_admin_agency.agency_id
  description = "NonProd Admin Agency ID"
}
output "nonprod_developer_agency_id" {
  value       = module.nonprod_developer_agency.agency_id
  description = "NonProd Developer Agency ID"
}
output "nonprod_operator_agency_id" {
  value       = module.nonprod_operator_agency.agency_id
  description = "NonProd Operator Agency ID"
}
output "nonprod_system_agency_id" {
  value       = module.nonprod_system_agency.agency_id
  description = "NonProd System Agency ID"
}
output "nonprod_devops_agency_id" {
  value       = module.nonprod_devops_agency.agency_id
  description = "NonProd Devops Agency ID"
}
output "nonprod_database_agency_id" {
  value       = module.nonprod_database_agency.agency_id
  description = "NonProd Database Agency ID"
}
output "nonprod_network_agency_id" {
  value       = module.nonprod_network_agency.agency_id
  description = "NonProd Network Agency ID"
}
output "nonprod_security_agency_id" {
  value       = module.nonprod_security_agency.agency_id
  description = "NonProd Security Agency ID"
}

## Custom Policy ID
output "admin_custom_policy_id" {
  value       = module.admin_custom_policy.custom_policy_id
  description = "Admin Custom Policy ID"
}
output "developer_custom_policy_id" {
  value       = module.developer_custom_policy.custom_policy_id
  description = "Developer Custom Policy ID"
}
output "operator_custom_policy_id" {
  value       = module.operator_custom_policy.custom_policy_id
  description = "Operator Custom Policy ID"
}
output "system_custom_policy_id" {
  value       = module.system_custom_policy.custom_policy_id
  description = "System Custom Policy ID"
}
output "devops_custom_policy_id" {
  value       = module.devops_custom_policy.custom_policy_id
  description = "Devops Custom Policy ID"
}
output "database_custom_policy_id" {
  value       = module.database_custom_policy.custom_policy_id
  description = "Database Custom Policy ID"
}
output "security_custom_policy_id" {
  value       = module.security_custom_policy.custom_policy_id
  description = "Security Custom Policy ID"
}
output "network_custom_policy_id" {
  value       = module.network_custom_policy.custom_policy_id
  description = "Network Custom Policy ID"
}

## User Group ID
output "admin_user_group_id" {
  value       = module.admin_user_group.user_group_id
  description = "Admin User Group ID"
}
output "developer_user_group_id" {
  value       = module.developer_user_group.user_group_id
  description = "Developer User Group ID"
}
output "operator_user_group_id" {
  value       = module.operator_user_group.user_group_id
  description = "Operator User Group ID"
}
output "system_user_group_id" {
  value       = module.system_user_group.user_group_id
  description = "System User Group ID"
}
output "devops_user_group_id" {
  value       = module.devops_user_group.user_group_id
  description = "Devops User Group ID"
}
output "database_user_group_id" {
  value       = module.database_user_group.user_group_id
  description = "Database User Group ID"
}
output "security_user_group_id" {
  value       = module.security_user_group.user_group_id
  description = "Security User Group ID"
}
output "network_user_group_id" {
  value       = module.network_user_group.user_group_id
  description = "Network User Group ID"
}

# ## User ID
# output "network_user_id" {
#   value       = module.network_user.user_id
#   description = "Network User ID"
# }
# output "compute_user_id" {
#   value       = module.compute_user.user_id
#   description = "Compute User ID"
# }
# output "security_user_id" {
#   value       = module.security_user.user_id
#   description = "Security User ID"
# }
# output "database_user_id" {
#   value       = module.database_user.user_id
#   description = "Database User ID"
# }