variable "bucket_prefix" {
  description = "The prefix for the S3 bucket name."
}

variable "acl" {
  description = "The access control list for the S3 bucket."
}

variable "versioning" {
  description = "Enable or disable versioning for the S3 bucket."
  type        = bool
}

variable "tags" {
  description = "Tags to apply to the S3 bucket."
  type        = map(string)
}
