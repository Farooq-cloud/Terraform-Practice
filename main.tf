provider "aws" {
    region = "ap-south1"
}

module "ec2_instance" {    # module name
source = "./modules/ec2_instance"
aws_region = ap-south-1
key_name = DevOps-Practice
instance_type = t2.medium
security_group = Terraform-sgroup-oct-2023
tag_name = my-Terraform-Instance
ami_id = ami-0f5ee92e2d63afc18
}

module "s3_bucket" {
source = "./modules/ec2_instance"
bucket_prefix = my-statefile-backup
versioning = true
}

module "dynamodb_table" {
source = "./modules/ec2_instance"
dynamodb_table_name = my-dynamo-db-table-tf
dynamodb_billing_mode = PAY_PER_REQUEST
dynamodb_hash_key = my-hash-key
dynamodb_range_key = my-range-key
dynamodb_attributes = dynamodb_attributes
description = "A list of attribute configurations for the DynamoDB table."
  type        = list(object({
    name = string
    type = string
  }))
  default = [
    {
      name = "my-hash-key"
      type = "S"
    },
    {
      name = "my-range-key"
      type = "N"
    }
  ]
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}




