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

module "ec2_instance" {
  source         = "../modules/compute"
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_id      = module.networking.aws_public_subnet_ids
  security_group = module.networking.vpc_security_group_id
}

module "load_balancer" {
  source            = "../modules/load-balancer"
  lb_security_group = module.networking.vpc_security_group_id
  lb_subnets        = module.networking.aws_public_subnet_ids
  lb_vpc_id         = module.networking.aws_vpc_id
  lb_target_id      = module.ec2_instance.web_server_ids
}

module "rds_instance" {
  source          = "../modules/database"
  storage         = var.storage
  storage_type    = var.storage_type
  engine          = var.engine
  engine_version  = var.engine_version
  instance_class  = var.instance_class
  db_name         = var.db_name
  db_user         = var.db_user
  db_pass         = var.db_pass
  db_subnet_group = module.networking.aws_private_subnet_id
}