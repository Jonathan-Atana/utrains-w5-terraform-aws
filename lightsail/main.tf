/**
 * # Description
 *
 * This module is designed to deploy an AWS Lightsail server. The server has the following characteristics:
 * 
 * - __name__ (*terraform-server*: this is the name of the instance
 * - **availability_zone** (*us-east-1a*): the az where the instance is deployed  
 * - **blueprint_id** (*amazon_linux_2*): the VM's OS will be an Amazon Linux 2
 * - **key_pair_name** (*w2key*): the key to use for remote connection to the server
 * - **tags**: this is a map which sets some labels specific to this server
 *
 * ## Usage
 *
 * To use this configuration, ensure you have the necessary AWS credentials set up and run:
 *
 * ```bash
 * terraform init
 * terraform plan
 * terraform apply
 * ```
 *
 * ---
 */

resource "aws_lightsail_instance" "main" {
  name              = "terraform-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_2_0"
  key_pair_name     = "w2key"
  tags = {
    Env  = "dev"
    Team = "Cloud"
  }
}