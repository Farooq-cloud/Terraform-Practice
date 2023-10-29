aws_region = "ap-south-1"  # Replace with your desired AWS region
key_name = "DevOps-Practice"    # Replace with your SSH key name
instance_type = "t2.medium"  # Replace with your desired EC2 instance type
security_group = "Terraform-sgroup-oct-2023"  # Replace with your desired security group name
tag_name = "my-Terraform-Instance"  # Replace with your desired tag name
ami_id = "ami-0f5ee92e2d63afc18"  # Replace with your desired AMI ID

# Boolean values do not need quotes
versioning = true

acl = "private"  # Replace with your desired ACL setting

bucket_prefix = "my-statefile-backup"  # Replace with your desired bucket prefix

dynamodb_table_name = "dynamodb_table_name"  # Replace with your desired DynamoDB table name
dynamodb_billing_mode = "PAY_PER_REQUEST"  # Replace with your desired billing mode
dynamodb_hash_key = "my-hash-key"  # Replace with your desired hash key
dynamodb_range_key = "my-range-key"  # Replace with your desired range key

# Define the DynamoDB attributes as a list of maps
dynamodb_attributes = [
  {
    name = "my-hash-key"
    type = "S"
  },
  {
    name = "my-range-key"
    type = "N"
  }
]

# Define tags as a map
tags = {
    environment = "DEV"
    terraform   = "true"
}
