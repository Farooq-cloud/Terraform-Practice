provider "aws" {
    region = "ap-south1"
} 

resource "aws_instance" "my-terraform-insatnce" {
ami = var.ami_id
key_name = var.key_name
instance_type = var.instance_type
vpc_security_group_ids = [aws_security_group.Terraform-sg-2023.id]
  tags= {
    Name = var.tag_name
  }
}

#Creating security group with firewall rules

resource "aws_security_group" "Terraform-sg-2023"{
    name        = var.security_group
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
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = var.security_group
  }
}
