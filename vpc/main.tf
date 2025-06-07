/**
 * # Description
 *
 * This modules is designed to create a vpc and an internet gateway in this vpc.
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

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name                 = "Terraform-vpc"
    Env                  = "dev"
    Team                 = "Cloud"
    created_by_terraform = "yes"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}