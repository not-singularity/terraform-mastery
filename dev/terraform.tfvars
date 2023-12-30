region = "ap-south-1"
vpc_cidr_block = "10.0.0.0/16"
public_subnets_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
azs = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
ingress_from_port = {
    "http" = 80
    "ssh" = 22
}
ingress_protocol = "tcp"
ingress_cidr_block = ["0.0.0.0/0"]