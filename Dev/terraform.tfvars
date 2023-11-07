aws_region = "ap-south-1"

ami = "ami-0f5ee92e2d63afc18"
key_name = "DevOps-Practice"
instance_type = "t2.medium"

# Create s3 bucket
bucket = "my-s3-bucket"

# my-dynamo-db-table-tf.tfvars

name           = "my-dynamo-db-table-tf"
billing_mode   = "PAY_PER_REQUEST"
hash_key       = "my-hash-key"
range_key      = "my-range-key"

my-hash-key-type = "S"
my-range-key-type = "N"

# If you were using provisioned throughput, you would set these values:
# read_capacity = 5
# write_capacity = 5
