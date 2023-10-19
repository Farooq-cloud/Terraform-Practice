terraform {
  backend "s3" {
    bucket = "my-statefile-backup"
    key = "main"
    region = "ap-south-1"
  }
}
