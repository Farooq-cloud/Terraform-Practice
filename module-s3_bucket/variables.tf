variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
}

variable "acl" {
  description = "Access control list for the S3 bucket"
  type        = string
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
}
