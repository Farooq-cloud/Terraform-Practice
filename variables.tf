variable "tags" {
  description = "The Name tag for the resource."
  type        = string
  default     = "my-Terraform-Instance"
}

variable "environment" {
  description = "The Environment tag for the resource."
  type        = string
  default     = "DEV"
}
