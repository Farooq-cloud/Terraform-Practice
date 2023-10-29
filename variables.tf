variable "tags" {
  type = map(string)
  default = {
    Name      = "my-Terraform-Instance"
    Environment = "DEV"
  }
