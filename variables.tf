variable "aws_region" {
       description = "The AWS region to create things in." 
       default     = "ap-south-1" 
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "DevOps-Practice" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "Terraform-sgroup-oct-2023" 
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "my-Terraform-Instance" 
} 
variable "ami_id" { 
    description = "AMI for Ubuntu Ec2 instance" 
    default     = "ami-0f5ee92e2d63afc18" 
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
    default     = "my-statefile-backup"
}
variable "dynamodb_table_name" {
description = "The name of the DynamoDB table."
type        = string
default     = "my-dynamo-db-table-tf"
}
variable "dynamodb_billing_mode" {
  description = "The billing mode for the DynamoDB table (e.g., PAY_PER_REQUEST or PROVISIONED)."
  type        = string
  default     = "PAY_PER_REQUEST"
}
variable "dynamodb_hash_key" {
  description = "The hash key for the DynamoDB table."
  type        = string
  default     = "my-hash-key"
}
variable "dynamodb_range_key" {
  description = "The range key for the DynamoDB table."
  type        = string
  default     = "my-range-key"
}
variable "dynamodb_attributes" {
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
