provider "aws" {
    region = "ap-south1"
}

module "ec2_instance" {    # module name
source = "./modules/ec2_instance"
}
