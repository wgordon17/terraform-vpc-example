output "cluster-private-subnets" {
  value       = module.vpc.private_subnets
  description = "List of private subnet IDs created."
}

output "cluster-public-subnets" {
  value       = module.vpc.public_subnets
  description = "List of private subnet IDs created."
}

output "cluster-subnets-string" {
  value       = join(",", concat(module.vpc.public_subnets, module.vpc.private_subnets))
  description = "Comma-separated string of all subnet IDs created for this cluster."
}

output "cluster-infra-id" {
  value       = resource.random_string.infra_id.result
  description = "Infra ID randomly generated for the cluster"
}
