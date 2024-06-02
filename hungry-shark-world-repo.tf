module hungry_shark_world_repository {
  source = "./modules/ecr"

  # Required variables
  name = "hungry-shark-world-repo"
  replication = false 

  # Optional variables
  # replication_region = "us-west-2" # Specify region where replication will be deployed if replication is enabled
  # image_tag_mutability = "MUTABLE" # Options are MUTABLE or IMMUTABLE. Default is MUTABLE
  # scan_on_push = true # Default is true
  # force_delete = true # Default is false
}

output "hungry_shark_world_registry_id" {
  value = module.hungry_shark_world_repository.registry_id
}

output "hungry_shark_world_repository_url" {
  value = module.hungry_shark_world_repository.repository_url
}