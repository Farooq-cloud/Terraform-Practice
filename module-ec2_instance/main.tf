provider "aws" {
  region = ap-south-1
}

resource "aws_vpc" "main" {
  cidr_block = "172.16.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}

#Create security group with firewall rules
resource "aws_security_group" "Terraform-sg-2023" {
  name        = Terraform-sgroup-oct-2023
  description = "security group for Ec2 instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = Terraform-sgroup-oct-2023
  }
}

resource "aws_instance" "my-Terraform-Instance" {
  ami           = ami-0f5ee92e2d63afc18
  key_name = DevOps-Practice
  instance_type = t2.medium
  vpc_security_group_ids = [aws_security_group.Terraform-sg-2023.id]
  tags= {
    Name = my-Terraform-Instance
  }
}

# create dynamo table

resource "aws_dynamodb_table" "my-dynamo-db-table-tf" {
  name           = "my-dynamo-db-table-tf"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "my-hash-key"
  range_key      = "my-range-key"

  attribute {
    name = "my-hash-key"
    type = "S"
  }
attribute {
    name = "my-range-key"
    type = "N"
  }

}