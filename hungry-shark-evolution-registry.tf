module hungry_shark_evolution_repository {
  source = "./modules/ecr"

  # Required variables
  name = "hungry-shark-evolution-repo"
  replication = false 

  # Optional variables
  # replication_region = "us-west-2" # Specify if replication is enabled
  # image_tag_mutability = "MUTABLE" # Options are MUTABLE or IMMUTABLE. Default is MUTABLE
  # scan_on_push = true # Default is true
  # force_delete = true # Default is false
}

output "hungry_shark_evolution_registry_id" {
  value = module.hungry_shark_evolution_repository.registry_id
}

output "hungry_shark_evolution_repository_url" {
  value = module.hungry_shark_evolution_repository.repository_url
}