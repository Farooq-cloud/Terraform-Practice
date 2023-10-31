variable "common_tags" {
  description = "Common tags to be applied to resources"
  type        = map(string)
  default     = {
    Environment = "DEV",
    terraform       = "true"
  }
}
