provider "aws" {
  region = "ap-south-1"
  # Add your AWS access and secret keys here, or use an AWS profile
}

resource "aws_s3_bucket" "my-s3-bucket" {
}
