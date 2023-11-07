provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my-Terraform-Instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

resource "key_name" {
 default = var.key_name
}
