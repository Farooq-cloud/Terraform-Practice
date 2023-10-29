provider "aws" {
    region = "ap-south1"
}
module "ec2_instance" {
source = "./modules/ec2_instance"
aws_region = ap-south-1
key_name = DevOps-Practice
instance_type = t2.medium
security_group = Terraform-sgroup-oct-2023
tag_name = my-Terraform-Instance
ami_id = ami-0f5ee92e2d63afc18
acl = private
bucket_prefix = my-statefile-backup
versioning = true
tags {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
dynamodb_table_name = my-dynamo-db-table-tf
dynamodb_billing_mode = PAY_PER_REQUEST
dynamodb_hash_key = my-hash-key
dynamodb_range_key = my-range-key
dynamodb_attributes = dynamodb_attributes
}




