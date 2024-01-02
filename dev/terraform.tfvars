region               = "ap-south-1"
vpc_cidr_block       = "10.0.0.0/16"
public_subnets_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24"]
azs                  = ["ap-south-1a", "ap-south-1b"]
ingress_from_port = {
  "port_1" = 80
  "port_2" = 8080
  "port_3" = 3306
}
ingress_protocol   = "tcp"
ingress_cidr_block = ["0.0.0.0/0"]
bucket             = "tf-remote-statefile"
ami                = "ami-03f4878755434977f"
instance_type      = "t2.micro"
storage            = 20
storage_type       = "standard"
engine             = "postgres"
engine_version     = "12"
instance_class     = "db.t2.micro"
db_name            = "app"
# vault_address      = <>
# vault_role_id      = <>
# vault_secret_id    = <>