output "my-vpc-id" {
  value = aws_vpc.main.id
}

output "internet-gateway" {
  value = aws_internet_gateway.gw.id
}