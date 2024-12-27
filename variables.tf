variable "ec2_account" {
  description = "Object of inputs for ec2 account settings"
  type = object({
    ebs_encryption_by_default = optional(object({
      enabled         = optional(bool, true)
      default_kms_key = optional(string)
    }), {})

    ebs_snapshot_block_public_access = optional(object({
      state = optional(string, "block-all-sharing")
    }), {})

    image_block_public_access = optional(object({
      state = optional(string, "block-new-sharing")
    }), {})

    instance_metadata_defaults = optional(object({
      http_endpoint               = optional(string, "enabled")
      http_tokens                 = optional(string, "required")
      http_put_response_hop_limit = optional(number, 2)
      instance_metadata_tags      = optional(string, "enabled")
    }), {})

    serial_console_access = optional(object({
      enabled = optional(bool, false)
    }))
  })
  default  = {}
  nullable = false
}
