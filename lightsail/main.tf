resource "aws_lightsail_instance" "gitlab_project" {
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