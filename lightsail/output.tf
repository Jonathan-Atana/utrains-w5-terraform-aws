output "my-public-ip" {
  value = aws_lightsail_instance.main.public_ip_address
}

output "keyname" {
  value = aws_lightsail_instance.main.key_pair_name
}

output "my-username" {
  value = aws_lightsail_instance.main.username
}

output "my-priv-ip" {
  value = aws_lightsail_instance.main.private_ip_address
}