<!-- BEGIN_TF_DOCS -->
# Description

This module is designed to deploy an AWS Lightsail server. The server has the following characteristics:

- __name__ (*terraform-server*: this is the name of the instance
- **availability\_zone** (*us-east-1a*): the az where the instance is deployed  
- **blueprint\_id** (*amazon\_linux\_2*): the VM's OS will be an Amazon Linux 2
- **key\_pair\_name** (*w2key*): the key to use for remote connection to the server
- **tags**: this is a map which sets some labels specific to this server

## Usage

To use this configuration, ensure you have the necessary AWS credentials set up and run:

```bash
terraform init
terraform plan
terraform apply
```

---

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_instance.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/lightsail_instance) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_keyname"></a> [keyname](#output\_keyname) | n/a |
| <a name="output_my-priv-ip"></a> [my-priv-ip](#output\_my-priv-ip) | n/a |
| <a name="output_my-public-ip"></a> [my-public-ip](#output\_my-public-ip) | n/a |
| <a name="output_my-username"></a> [my-username](#output\_my-username) | n/a |

---

## Additional Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Terraform Module Registry](https://registry.terraform.io/)
- [Best Practices for Module Development](https://developer.hashicorp.com/terraform/language/modules/develop)

## Authors

- **Author:** Jonathan
- **Generated on:** 2025-06-06
<!-- END_TF_DOCS -->