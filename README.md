# terraform-aws-tardigrade-ec2-account
Module to manage EC2 account settings

<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.62.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.62.0 |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_account"></a> [ec2\_account](#input\_ec2\_account) | Object of inputs for ec2 account settings | <pre>object({<br>    ebs_encryption_by_default = optional(object({<br>      enabled         = optional(bool, true)<br>      default_kms_key = optional(string)<br>    }), {})<br><br>    ebs_snapshot_block_public_access = optional(object({<br>      state = optional(string, "block-all-sharing")<br>    }), {})<br><br>    image_block_public_access = optional(object({<br>      state = optional(string, "block-new-sharing")<br>    }), {})<br><br>    serial_console_access = optional(object({<br>      enabled = optional(bool, false)<br>    }))<br>  })</pre> | `{}` | no |

## Outputs

No outputs.

<!-- END TFDOCS -->
