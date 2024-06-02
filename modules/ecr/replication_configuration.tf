resource "aws_ecr_replication_configuration" "replication_configuration" {
  replication_configuration {
    rule {
      destination {
        region      = var.region
        registry_id = aws_ecr_repository.repository.registry_id
      }
    }
  }
}