locals {
  check_replication_region = var.replication ? (var.replication_region != "not_set" ? var.replication_region : 
  (throw "replication_region must be set when replication is true")) : var.replication_region
}