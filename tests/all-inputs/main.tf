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

    serial_console_access = {
      enabled = true
    }
  }
}
