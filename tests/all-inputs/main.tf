module "ec2_account" {
  source = "../.."

  ec2_account = {
    ebs_encryption_by_default = {
      enabled         = true
      default_kms_key = null
    }

    ebs_snapshot_block_public_access = {
      state = "block-new-sharing"
    }

    image_block_public_access = {
      state = "block-new-sharing"
    }

    instance_metadata_defaults = {
      http_endpoint               = "enabled"
      http_tokens                 = "required"
      http_put_response_hop_limit = 2
      instance_metadata_tags      = "enabled"
    }

    serial_console_access = {
      enabled = true
    }
  }
}
