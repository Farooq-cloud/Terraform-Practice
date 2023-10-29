provider "aws" {
    region = "ap-south1"
}

module "ec2_instance" {    # module name
source = "./modules/ec2_instance"
aws_region = var.aws_region
key_name = var.key_name
instance_type = var.instance_type
security_group = var.security_group
tag_name = var.tag_name
ami_id = var.ami_id
}

module "s3_bucket" {
source = "./modules/ec2_instance"
bucket_prefix = var.bucket_prefix
versioning = var.versioning
}

module "dynamodb_table" {
source = "./modules/ec2_instance"
dynamodb_table_name = var.dynamodb_table_name
dynamodb_billing_mode = var.dynamodb_billing_mode
dynamodb_hash_key = var.dynamodb_hash_key
dynamodb_range_key = var.dynamodb_range_key
dynamodb_attributes = var.dynamodb_attributes
}

module "tags" {
  source = "./tags"
  tags = var.tags
}



