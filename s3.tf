resource "aws_s3_bucket_versioning" "my-s3-bucket-versioning" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
