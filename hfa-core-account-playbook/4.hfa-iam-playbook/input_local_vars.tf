## Agency Name
variable admin_agency_name { default = "Admin" }
variable developer_agency_name { default = "Developer" }
variable operator_agency_name { default = "Operator" }
variable system_agency_name { default = "System" }
variable devops_agency_name { default = "Devops" }
variable database_agency_name { default = "Database" }
variable network_agency_name { default = "Network" }
variable security_agency_name { default = "Security" }

## Project Roles
variable admin_project_roles { default = ["FullAccess"] }
variable developer_project_roles { default = ["Tenant Guest"] }
variable operator_project_roles { default = ["Tenant Guest"] }
variable system_project_roles { 
    default = ["Tenant Guest", "CCE FullAccess", "ECS FullAccess", "RDS FullAccess", "DCS FullAccess", "DDS FullAccess", 
    "DMS FullAccess", "OBS OperateAccess", "AOM FullAccess", "LTS FullAccess", "KMS CMKFullAccess"] 
}
variable devops_project_roles { default = ["Tenant Guest", "APIG FullAccess"] }
variable database_project_roles { 
    default = ["RDS FullAccess", "DCS FullAccess", "DDS FullAccess", "DMS FullAccess", "CSS FullAccess", "OBS OperateAccess"] 
}
variable network_project_roles { default = ["ELB FullAccess", "VPC FullAccess", "NAT FullAccess", "VPN FullAccess", "CFW ReadOnlyAccess"] }
# variable general_security_project_roles { default = ["Security Administrator", "KMS CMKFullAccess"] }
variable general_security_project_roles { default = ["IAM ReadOnlyAccess", "KMS CMKFullAccess"] }

# variable transit_security_project_roles { default = ["Security Administrator"] }
variable transit_security_project_roles { default = ["IAM ReadOnlyAccess"] }
# variable common_security_project_roles { default = ["Security Administrator", "Tenant Guest"] }
variable common_security_project_roles { default = ["IAM ReadOnlyAccess", "Tenant Guest"] }
variable common_devops_project_roles { default = ["Tenant Guest"] }

## User Group Name
variable admin_group_name { default = "Administrator" }
variable developer_group_name { default = "Developer" }
variable operator_group_name { default = "Operator" }
variable system_group_name { default = "System" }
variable devops_group_name { default = "Devops" }
variable database_group_name { default = "Database" }
variable network_group_name { default = "Network" }
variable security_group_name { default = "Security" }

## Policy Name
variable admin_policy_name { default = "Policy_Admin" }
variable developer_policy_name { default = "Policy_Developer" }
variable operator_policy_name { default = "Policy_Operator" }
variable system_policy_name { default = "Policy_System" }
variable devops_policy_name { default = "Policy_Devops" }
variable database_policy_name { default = "Policy_Database" }
variable network_policy_name { default = "Policy_Network" }
variable security_policy_name { default = "Policy_Security" }

# variable user_pwd { default = "HuaweiCloud@123" }
# variable network_username { default = "network_admin" }
# variable compute_username { default = "compute_admin" }
# variable security_username { default = "security_admin" }
# variable database_username { default = "database_admin" }