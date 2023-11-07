variable "aws_region" {
  description = "The AWS region where the resources should be created."
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

