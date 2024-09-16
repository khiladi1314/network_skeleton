variable "region" {
  type    = string
  default = "us-east-1"
}
/*---------------vpc variables---------------*/

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/25"
}

variable "vpc_enable_dns_support" {
  type    = bool
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  default = false
}

variable "vpc_tags" {
  type    = map(string)
  default = {
    Name = "dev-vpc"
    Enviroment = "dev"
    Owner = "sahil"
  }
}

/*--------------- Public Subnets ---------------*/

variable "public_subnets_cidr" {
  description = "public subnet cidr block"
  type        = list(string)
  default     = ["10.0.0.0/28", "10.0.0.16/28"]

}

variable "aws_region" {
  type = string
  default = "us-east-1"
  
}
variable "enable_map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "public_subnets_tags" {
  description = "public subnet tags"
  type        = list(map(string))
  default = [{
    Name = "public-subnet-01"
    Enviroment = "dev"
    Owner = "sahil"
    }, {
    Name = "public-subnet-02"
    Enviroment = "dev"
    Owner = "sahil"
  }]
}

/*--------------- Private Subnets ---------------*/

variable "private_subnets_cidr" {
  description = "private subnet cidr block"
  type        = list(string)
  default     = ["10.0.0.32/28", "10.0.0.64/27", "10.0.0.96/28"]

}


variable "private_subnets_tags" {
  description = "private subnet tags"
  type        = list(map(string))
  default = [{
    Name = "frontend-subnet"
    Enviroment = "dev"
    Owner = "sahil"
    }, {
    Name = "backend-subnet"
    Enviroment = "dev"
    Owner = "sahil"
  }, {
    Name = "database-subnet"
    Enviroment = "dev"
    Owner = "sahil"
  }]
}

/*--------------- # Internet Gateway ---------------*/

variable "igw_tags" {
  type    = map(string)
  default = {
    Name = "dev-igw-01"
    Enviroment = "dev"
    Owner = "sahil"
  }
}
/*--------------- # Elastic IP ---------------*/


variable "elastic_ip"{
  type    = number
  default = 2
}
/*--------------- # NAT Gateway ---------------*/

variable "nat" {
  type    = number
  default = 2
}
variable "nat_tags" {
  type        = list(map(string))
  default = [{
    Name = "frontend-subnet"
    Enviroment = "dev"
    Owner = "sahil"
    }, {
    Name = "database-subnet"
    Enviroment = "dev"
    Owner = "sahil"
  }]
}


/*--------------- # Route Table ---------------*/

variable "public_route_table_tags" {
  type    = map(string)
  default = {
    Name = "dev-public-RTB-01"
    Enviroment = "dev"
    Owner = "sahil"
  }
}

variable "private_route_table_tags" {
  type    = list(map(string))
  default = [{
    Name = "dev-private-RTB-01"
    Enviroment = "dev"
    Owner = "sahil"
  }]
}
variable "specific_subnet_AZ01" {
  type    = list(number)
  default = [0, 2, 4]  
}
variable "specific_subnet_AZ02" {
  type    = list(number)
  default = [1, 3, 5]  
}
/*--------------- Frontend NACL ---------------*/

variable "frontend_nacl_ingress" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "frontend_nacl_egress" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "frontend_nacl_tags" {
  type    = map(string)
  default = {
    Name = "dev-frontend-nacl-01"
    Enviroment = "dev"
    Owner = "sahil"
  }
}

/*--------------- Backend NACL ---------------*/

variable "backend_nacl_ingress" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "backend_nacl_egress" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "backend_nacl_tags" {
  type    = map(string)
  default = {
    Name = "dev-backend-nacl-01"
    Enviroment = "dev"
    Owner = "sahil"
  }
}

/*--------------- Database NACL ---------------*/

variable "db_nacl_ingress" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "db_nacl_egress" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "db_nacl_tags" {
  type    = map(string)
  default = {
    Name = "dev-db-nacl-01"
    Enviroment = "dev"
    Owner = "sahil"
  }
}
