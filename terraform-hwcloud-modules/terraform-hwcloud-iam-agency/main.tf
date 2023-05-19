# create agency on delegating account (sub-accounts)
resource "huaweicloud_identity_agency" "agency" {
  name                  = var.agency_name
  description           = "Agency created by Terraform"
  delegated_domain_name = var.centralized_iam_account_name

  project_role {
    project = var.region
    roles   = var.project_role
  }
  # domain_roles = var.domain_role
}