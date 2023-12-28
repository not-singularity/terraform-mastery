terraform {
  backend "s3" {
    bucket         = "tf-remote-statefile-staging"
    key            = "statelock/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    # dynamodb_table = "terraform-statelock-dev"
  }
}

module "provider" {
  source = "../global/modules/providers"
  region = var.region
}

module "s3_bucket" {
  source = "../global/modules/s3-bucket"
  bucket = var.bucket
}

# module "dynamodb_table" {
#   source = "../global/modules/dynamo-db-statelock"
#   dynamo_db_table_name = var.dynamo_db_table_name
#   billing_mode         = var.billing_mode
#   hash_key             = var.hash_key
#   hash_key_type        = var.hash_key_type
# }