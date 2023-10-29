variable "tags" {
  description = "A map of tags for the AWS resources."
  type        = map(string)
  default     = {
    Name        = "my-Terraform-Instance"
    Environment = "DEV"
  }
}
