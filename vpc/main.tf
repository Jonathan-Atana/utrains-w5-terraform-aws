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