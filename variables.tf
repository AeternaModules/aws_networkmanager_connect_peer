variable "networkmanager_connect_peers" {
  description = <<EOT
Map of networkmanager_connect_peers, attributes below
Required:
    - connect_attachment_id
    - peer_address
Optional:
    - core_network_address
    - inside_cidr_blocks
    - subnet_arn
    - tags
    - tags_all
    - bgp_options (block):
        - peer_asn (optional)
EOT

  type = map(object({
    connect_attachment_id = string
    peer_address          = string
    core_network_address  = optional(string)
    inside_cidr_blocks    = optional(list(string))
    subnet_arn            = optional(string)
    tags                  = optional(map(string))
    tags_all              = optional(map(string))
    bgp_options = optional(object({
      peer_asn = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_connect_peers : (
        (length(v.connect_attachment_id) >= 0 && length(v.connect_attachment_id) <= 50) && (can(regex("^attachment-([0-9a-f]{8,17})$", v.connect_attachment_id)))
      )
    ])
    error_message = "all of: must be between 0 and 50 characters; Must start with attachment and then have 8 to 17 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_connect_peers : (
        v.core_network_address == null || ((length(v.core_network_address) >= 1 && length(v.core_network_address) <= 50) && (can(regex("[\\s\\S]*", v.core_network_address))))
      )
    ])
    error_message = "all of: must be between 1 and 50 characters; Anything but whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_connect_peers : (
        (length(v.peer_address) >= 1 && length(v.peer_address) <= 50) && (can(regex("[\\s\\S]*", v.peer_address)))
      )
    ])
    error_message = "all of: must be between 1 and 50 characters; Anything but whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_connect_peers : (
        v.subnet_arn == null || ((length(v.subnet_arn) >= 0 && length(v.subnet_arn) <= 500) && (can(regex("^arn:[^:]{1,63}:ec2:[^:]{0,63}:[^:]{0,63}:subnet\\/subnet-[0-9a-f]{8,17}$|^$", v.subnet_arn))))
      )
    ])
    error_message = "all of: must be between 0 and 500 characters; Must be a valid subnet ARN"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

