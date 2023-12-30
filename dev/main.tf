provider "aws" {
  region = var.region
}

module "networking" {
  source               = "../modules/networking"
  vpc_cidr_block       = var.vpc_cidr_block
  public_subnets_cidrs = var.public_subnets_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  ingress_from_port    = var.ingress_from_port
  ingress_protocol     = var.ingress_protocol
  ingress_cidr_block   = var.ingress_cidr_block
}

module "s3" {
  source = "../modules/s3"
  bucket = var.bucket
}