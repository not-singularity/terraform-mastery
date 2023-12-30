variable "region" {
  type = string
  description = "AWS Region"
}

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

variable "ingress_description" {
  type = list(string)
  description = "Decription of Ingress in Security Group"
}

variable "ingress_from_port" {
  type = list(string)
  description = "Ingress From Ports"
}

variable "ingress_to_port" {
  type = list(string)
  description = "Ingress To Ports"
}

variable "ingress_protocol" {
  type = list(string)
  description = "Ingress Protocols"
}

variable "ingress_cidr_block" {
  type = list(string)
  description = "Ingress CIDR Block"
}