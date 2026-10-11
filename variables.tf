variable "dns_records" {
  description = <<EOT
Map of dns_records, attributes below
Required:
    - domain
    - environment (block):
        - id (required)
    - gateway (block):
        - id (required)
Optional:
    - display_name
    - private_link_access_point (block):
        - id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    domain       = string
    display_name = optional(string)
    environment = object({
      id = string
    })
    gateway = object({
      id = string
    })
    private_link_access_point = optional(object({
      id = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

