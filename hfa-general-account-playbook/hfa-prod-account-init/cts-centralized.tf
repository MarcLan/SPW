data "terraform_remote_state" "key" {
  backend = "local"

  config = {
    path = "../../hfa-core-account-playbook/2.hfa-logs-playbook/terraform.tfstate"
  }
}

module "prod_cts_centralized" {
  source = "../../terraform-hwcloud-modules/terraform-hwcloud-cts-centralized"
  
  region = module.global_variables.default_region
  centralized_bucket_name = var.prod_bucket_name
  # obs_kms_keyid = data.terraform_remote_state.network.outputs.transit_egress_nat_gw_id  
  cts_centralized_rotation_days = var.cts_centralized_rotation_days
  
  collected_account_name = module.global_variables.prod_env_root_account_name
  collected_access_key = module.global_variables.prod_env_account_ak
  collected_secret_key = module.global_variables.prod_env_account_sk

  centralized_account_name = module.global_variables.security_service_root_account_name
  centralized_access_key = module.global_variables.security_service_account_ak
  centralized_secret_key = module.global_variables.security_service_account_sk
}