output "common_vpc_id" {
  value       = module.common_service_vpc.vpc_id
  description = "Common Account VPC ID"
}

output "security_vpc_id" {
  value       = module.security_service_vpc.vpc_id
  description = "Security Account VPC ID"
}

output "transit_prod_ingress_vpc_id" {
  value       = module.transit_service_prod_ingress_vpc.vpc_id
  description = "Transit Account Ingress VPC ID"
}

output "transit_prod_egress_vpc_id" {
  value       = module.transit_service_prod_egress_vpc.vpc_id
  description = "Transit Account Egress VPC ID"
}

output "transit_nonprod_ingress_vpc_id" {
  value       = module.transit_service_nonprod_ingress_vpc.vpc_id
  description = "Transit Account Ingress VPC ID"
}

output "transit_nonprod_egress_vpc_id" {
  value       = module.transit_service_nonprod_egress_vpc.vpc_id
  description = "Transit Account Egress VPC ID"
}

output "prod_env_vpc_id" {
  value       = module.prod_env_vpc.vpc_id
  description = "Production Account VPC ID"
}

output "transit_prod_vpc_id" {
  value       = module.transit_prod_vpc.vpc_id
  description = "Transit Account transit production VPC ID"
}

# output "transit_nonprod_vpc_id" {
#   value       = module.transit_nonprod_vpc.vpc_id
#   description = "Transit Account transit non-production VPC ID"
# }

### add in
output "common_private_subnet_id" {
   value       = module.common_service_vpc.private_subnet_id 
   description = "Common Service Account Private subnet ID"
}

output "security_private_subnet_id" {
   value       = module.security_service_vpc.private_subnet_id 
   description = "Security Account Private subnet ID"
}

output "transit_prod_ingress_subnet_id" {
   value       = module.transit_service_prod_ingress_vpc.ingress_subnet_id
   description = "Transit Prod Ingress VPC Private subnet ID"
}

output "transit_prod_egress_subnet_id" {
   value       = module.transit_service_prod_egress_vpc.egress_subnet_id
   description = "Transit Prod Egress VPC Private subnet ID"
}

output "transit_nonprod_ingress_subnet_id" {
   value       = module.transit_service_nonprod_ingress_vpc.ingress_subnet_id
   description = "Transit Non-Prod Ingress VPC Private subnet ID"
}

output "transit_nonprod_egress_subnet_id" {
   value       = module.transit_service_nonprod_egress_vpc.egress_subnet_id
   description = "Transit Non-Prod Egress VPC Private subnet ID"
}

output "prod_private_subnet_id" {
   value       = module.prod_env_vpc.private_subnet_id 
   description = "Production Account Private subnet ID"
}
