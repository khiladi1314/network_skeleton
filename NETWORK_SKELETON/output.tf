output "vpc-id" {
  value = aws_vpc.vpc.id
}

output "public-subnets-id" {
  value = aws_subnet.public_subnets[*].id
}


output "private-subnets-id" {
  value = aws_subnet.private_subnets[*].id
}

output "igw-id" {
  value = aws_internet_gateway.igw.id
}

output "nat-id" {
  value = aws_nat_gateway.nat[*].id
}

output "public-RTB-id" {
  value = aws_route_table.public_rtb.id
}

output "private-RTB-id" {
  value = aws_route_table.private_rtb[*].id
}

output "frontend-nacl-id" {
  value = aws_network_acl.frontend_nacl.id
}

output "backend-nacl-id" {
  value = aws_network_acl.backend_nacl.id
}

output "db-nacl-id" {
  value = aws_network_acl.db_nacl.id
}






