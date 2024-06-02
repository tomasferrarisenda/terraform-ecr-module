module invincible_repository {
  source = "./modules/ecr"

  # Required variables
  name = "invincible-repo"
  replication = false 

  # Optional variables
  # replication_region = "us-west-2" # Specify if replication is enabled
  # image_tag_mutability = "MUTABLE" # Options are MUTABLE or IMMUTABLE. Default is MUTABLE
  # scan_on_push = true # Default is true
  # force_delete = true # Default is false
}

output "invincible_registry_id" {
  value = module.invincible_repository.registry_id
}

output "invincible_repository_url" {
  value = module.invincible_repository.repository_url
}