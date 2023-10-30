provider "aws" {
    region = "ap-south1"
}
module "ec2_instance" {
source = "./modules/ec2_instance"
aws_region = var.aws_region
key_name = var.key_name
instance_type = var.instance_type
security_group = var.security_group
tag_name = var.tag_name
tags = var.tags
ami_id = var.ami_id
acl = var.acl
bucket_prefix = var.bucket_prefix
versioning = var.versioning
dynamodb_table_name = var.dynamodb_table_name
dynamodb_billing_mode = var.dynamodb_billing_mode
dynamodb_hash_key = var.dynamodb_hash_key
dynamodb_range_key = var.my-range-key
dynamodb_attributes = var.dynamodb_attributes
}

