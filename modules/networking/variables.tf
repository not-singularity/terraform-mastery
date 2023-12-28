variable "vpc_cidr_block" {
  type = string
  description = "VPC CIDR Block"
}

variable "public_subnets_cidrs" {
  type = list(string)
  description = "Public Subnets CIDR Range"
}

variable "private_subnet_cidrs" {
  type = list(string)
  description = "Private Subnets CIDR Range"
}

variable "azs" {
  type = list(string)
  description = "Availability Zones"
}