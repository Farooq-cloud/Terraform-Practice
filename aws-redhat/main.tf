provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source       = "aws-redhat/ec2"
  instance_type = var.instance_type
  ami           = var.ami
  key_name      = var.key_name
}

