variable "blockchain_blockchain_platform_patches_lookup" {
  description = <<EOT
Map of blockchain_blockchain_platform_patches_lookup, attributes below
Required:
    - blockchain_platform_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    blockchain_platform_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

