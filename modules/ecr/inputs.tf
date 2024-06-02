variable "name" {
  type = string
}

variable "image_tag_mutability" {
  type        = string
  default     = "MUTABLE"
  description = "Options are MUTABLE or IMMUTABLE."
  validation {
    condition     = can(regex("MUTABLE|IMMUTABLE", var.image_tag_mutability))
    error_message = "Options are MUTABLE or IMMUTABLE."
  }
}

variable "scan_on_push" {
  type = bool
  default = true
  description = "If true, enables vulnerability scanning on the repository."
}

variable "force_delete" {
  type = bool
  description = "If true, allows the repository to be deleted even if it contains images."
  default = false
}

variable "replication" {
  description = "If true, deploy the replication"
  type        = bool
}

variable "replication_region" {
  type        = string
  default = "not_set"
}
