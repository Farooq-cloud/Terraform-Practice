variable "aws_region" {
    description = "The AWS region to create things in."
}

variable "key_name" {
    description = "SSH keys to connect to the EC2 instance"
}

variable "instance_type" {
    description = "Instance type for EC2"
}

variable "security_group" {
    description = "Name of security group"
}

variable "tag_name" {
    description = "Tag Name for EC2 instance"
}

variable "ami_id" {
    description = "AMI for Ubuntu EC2 instance"
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
}

variable "acl" {
    type        = string
    description = "Defaults to private"
}

variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
}

variable "dynamodb_table_name" {
    description = "The name of the DynamoDB table."
    type        = string
}

variable "dynamodb_billing_mode" {
    description = "The billing mode for the DynamoDB table (e.g., PAY_PER_REQUEST or PROVISIONED)."
    type        = string
}

variable "dynamodb_hash_key" {
    description = "The hash key for the DynamoDB table."
    type        = string
}

variable "dynamodb_range_key" {
    description = "The range key for the DynamoDB table."
    type        = string
}

variable "dynamodb_attributes" {
    description = "A list of attribute configurations for the DynamoDB table."
    type        = list(object({
        name = string
        type = string
    }))
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resources in the module."
  default     = {
    environment = "DEV"
    terraform   = "true"
    tags = var.tags
  }
}
