region = "ap-south-1"
bucket = "tf-remote-statefile-staging"
dynamo_db_table_name = "terraform-statelock-staging"
billing_mode         = "PAY_PER_REQUEST"
hash_key             = "LockID"
hash_key_type        = "S"