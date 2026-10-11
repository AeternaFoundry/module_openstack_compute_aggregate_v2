variable "compute_aggregate_v2s" {
  description = <<EOT
Map of compute_aggregate_v2s, attributes below
Required:
    - name
Optional:
    - hosts
    - metadata
    - region
    - zone
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name     = string
    hosts    = optional(set(string))
    metadata = optional(map(string))
    region   = optional(string)
    zone     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

