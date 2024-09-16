# ************************************ Network ************************************ # 

output "vpc-id" {
  value = module.network.vpc-id
}

output "public-subnets-id" {
  value = module.network.public-subnets-id
}


output "private-subnets-id" {
  value = module.network.private-subnets-id
}

output "igw-id" {
  value = module.network.igw-id
}

output "nat-id" {
  value = module.network.nat-id
}

output "public-RTB-id" {
  value = module.network.public-RTB-id
}

output "private-RTB-id" {
  value = module.network.private-RTB-id
}

output "frontend-nacl-id" {
  value = module.network.frontend-nacl-id
}

output "backend-nacl-id" {
  value = module.network.backend-nacl-id
}

output "db-nacl-id" {
  value = module.network.db-nacl-id
}
