# VPC Configuration
region                       = "us-east-1"
vpc_cidr                     = "10.0.0.0/25"
vpc_enable_dns_support        = true
vpc_enable_dns_hostnames      = false
vpc_tags = {
  Name       = "dev-vpc"
  Enviroment = "dev"
  Owner      = "sahil"
}

# Public Subnets Configuration
public_subnets_cidr = ["10.0.0.0/28", "10.0.0.16/28"]
aws_region          = "us-east-1"
enable_map_public_ip_on_launch = true
public_subnets_tags = [
  {
    Name       = "public-subnet-01"
    Enviroment = "dev"
    Owner      = "sahil"
  },
  {
    Name       = "public-subnet-02"
    Enviroment = "dev"
    Owner      = "sahil"
  }
]

# Private Subnets Configuration
private_subnets_cidr = ["10.0.0.32/28", "10.0.0.64/27", "10.0.0.96/28"]
private_subnets_tags = [
  {
    Name       = "frontend-subnet"
    Enviroment = "dev"
    Owner      = "sahil"
  },
  {
    Name       = "backend-subnet"
    Enviroment = "dev"
    Owner      = "sahil"
  },
  {
    Name       = "database-subnet"
    Enviroment = "dev"
    Owner      = "sahil"
  }
]

# Internet Gateway
igw_tags = {
  Name       = "dev-igw-01"
  Enviroment = "dev"
  Owner      = "sahil"
}

# Elastic IPs and NAT Gateway Configuration
elastic_ip = 2
nat        = 2
nat_tags   = [
  {
    Name       = "frontend-subnet"
    Enviroment = "dev"
    Owner      = "sahil"
  },
  {
    Name       = "database-subnet"
    Enviroment = "dev"
    Owner      = "sahil"
  }
]

# Route Table Configuration
public_route_table_tags = {
  Name       = "dev-public-RTB-01"
  Enviroment = "dev"
  Owner      = "sahil"
}

private_route_table_tags = [
  {
    Name       = "dev-private-RTB-01"
    Enviroment = "dev"
    Owner      = "sahil"
  }
]

specific_subnet_AZ01 = [0, 2, 4]
specific_subnet_AZ02 = [1, 3, 5]

# Frontend NACL Configuration
frontend_nacl_ingress = [
  {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
    action     = "allow"
  }
]
frontend_nacl_egress = [
  {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
    action     = "allow"
  }
]
frontend_nacl_tags = {
  Name       = "dev-frontend-nacl-01"
  Enviroment = "dev"
  Owner      = "sahil"
}

# Backend NACL Configuration
backend_nacl_ingress = [
  {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 3306
    to_port    = 3306
    action     = "allow"
  }
]
backend_nacl_egress = [
  {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    action     = "allow"
  }
]
backend_nacl_tags = {
  Name       = "dev-backend-nacl-01"
  Enviroment = "dev"
  Owner      = "sahil"
}

# Database NACL Configuration
db_nacl_ingress = [
  {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 5432
    to_port    = 5432
    action     = "allow"
  }
]
db_nacl_egress = [
  {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    action     = "allow"
  }
]
db_nacl_tags = {
  Name       = "dev-db-nacl-01"
  Enviroment = "dev"
  Owner      = "sahil"
}
