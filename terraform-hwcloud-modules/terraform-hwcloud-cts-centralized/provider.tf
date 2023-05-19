provider "huaweicloud" {
  alias      = "collected"
  region     = var.region
  domain_name = var.collected_account_name
  access_key = var.collected_access_key
  secret_key = var.collected_secret_key
}

provider "huaweicloud" {
  alias      = "centralized"
  region     = var.region
  access_key = var.centralized_access_key
  secret_key = var.centralized_secret_key
}

