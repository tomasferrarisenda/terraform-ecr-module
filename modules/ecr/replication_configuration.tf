resource "aws_ecr_replication_configuration" "replication_configuration" {
  count         = var.replication ? 1 : 0

  replication_configuration {
    rule {
      destination {
        # region      = var.replication_region
        region      = local.region
        registry_id = aws_ecr_repository.repository.registry_id
      }
    }
  }
}