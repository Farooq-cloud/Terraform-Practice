provider "aws" {
    region = "ap-south1"
}
module "ec2_instance" {
source = "./module/ec2_instance"
}

module "aws_dynamodb_table" {
source = "./module/aws_dynamodb_table"
}

module "s3_bucket" {
source = "./module/s3_bucket"
}
