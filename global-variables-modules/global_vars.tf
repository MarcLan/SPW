# master account
output "corp_name" { value = "" }
output "corp-name" { value = "" }

## for default region singapore
output "default_region" { value = "ap-southeast-2" }

# common service account
output "common_service_account_name"   { value = "common_service" }
output "common_service_root_account_name"   { value = "" }
output "common_service_account_ak"   { value = "" }
output "common_service_account_sk"   { value = "" }
output "common_service_domain_id" { value = "" }

# security operation account
output "security_service_account_name"   { value = "security_service" }
output "security_service_root_account_name"   { value = "" }
output "security_service_account_ak"   { value = "" }
output "security_service_account_sk"   { value = "" }
output "security_service_domain_id" { value = "" }

# transit service account
output "transit_service_account_name"   { value = "transit_service" }
output "transit_service_root_account_name"   { value = "" }
output "transit_service_account_ak"   { value = "" }
output "transit_service_account_sk"   { value = "" }
output "transit_service_domain_id" { value = "" }

# centralized iam account
output "centralized_iam_account_name"   { value = "centralized_iam_service" }
output "centralized_iam_root_account_name"   { value = "" }
output "centralized_iam_account_ak"   { value = "" }
output "centralized_iam_account_sk"   { value = "" }
output "centralized_iam_domain_id" { value = "" }

# production environment account
output "prod_env_account_name"   { value = "prod_env" }
output "prod_env_root_account_name"   { value = "" }
output "prod_env_account_ak"   { value = "" }
output "prod_env_account_sk"   { value = "" }
output "prod_env_domain_id" { value = "" }

# non-production environment account
output "nonprod_env_account_name"   { value = "nonprod_env" }
output "nonprod_env_root_account_name"   { value = "" }
output "nonprod_env_account_ak"   { value = "" }
output "nonprod_env_account_sk"   { value = "" }
output "nonprod_env_domain_id" { value = "" }