provider "aws" {
    region = "ap-south1"
}
module "ec2_instance" {
source = "./modules/ec2_instance"
}

