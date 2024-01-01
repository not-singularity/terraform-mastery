provider "aws" {
  region = var.region
}

module "statelock-dynamodb" {
  source = "../modules/statelock"
}

module "s3" {
  source = "../modules/s3"
  bucket = var.bucket
}
