output "my-public-ip" {
  value = aws_lightsail_instance.gitlab_project.public_ip_address
}

output "keyname" {
  value = aws_lightsail_instance.gitlab_project.key_pair_name
}

output "my-username" {
  value = aws_lightsail_instance.gitlab_project.username
}

output "my-priv-ip" {
  value = aws_lightsail_instance.gitlab_project.private_ip_address
}