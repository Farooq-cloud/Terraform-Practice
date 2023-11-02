
variable "table_name" {
  description = "The name of the DynamoDB table."
  default     = "my-dynamo-db-table-tf"
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table (PROVISIONED or PAY_PER_REQUEST)."
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The hash key for the DynamoDB table."
  default     = "my-hash-key"
}

variable "range_key" {
  description = "The range key for the DynamoDB table."
  default     = "my-range-key"
}

variable "attributes" {
  description = "A list of attribute definitions for the DynamoDB table."
  type        = list(map(string))
  default     = [
    {
      name = "my-hash-key",
      type = "S"
    },
    {
      name = "my-range-key",
      type = "N"
    }
  ]
}

variable "aws_region" {
  description = "The AWS region where the resources should be created."
}

variable "security_group" {
  description = "The name for the security group."
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the EC2 instance."
}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
}

variable "tag_name" {
  description = "The Name tag for the EC2 instance."
}


variable "bucket_prefix" {
  description = "The prefix for the S3 bucket name."
}

variable "acl" {
  description = "The access control list for the S3 bucket."
}

variable "versioning" {
  description = "Enable or disable versioning for the S3 bucket."
  type        = bool
}

variable "tags" {
  description = "Tags to apply to the S3 bucket."
  type        = map(string)
}
