variable "tags" {
  type = map(string)
  default = {
    Name      = "my-Terraform-Instance"
    Environment = "DEV"
  }
}
variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "my-Terraform-Instance" 
} 
