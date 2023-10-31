provider "aws" {
    region = "ap-south1"
}
module "ec2_instance" {
source = "./modules/ec2_instance"
}

module "aws_dynamodb_table" {
source = "./modules/ec2_instance"
}

module "s3_bucket" {
source = "./modules/ec2_instance"
}
