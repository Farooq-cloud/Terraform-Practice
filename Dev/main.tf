provider "aws" {
    region = "ap-south1"
}

# module for creating ec2_instance

module "ec2_instance" {
source = ".//module-ec2_instance"
}

# Module Creating dynamodb table

module "aws_dynamodb_table" {
source = ".//module-aws_dynamodb_table"
}

# module creating s3 bucket

module "s3_bucket" {
source = ".//module-s3_bucket"
}
