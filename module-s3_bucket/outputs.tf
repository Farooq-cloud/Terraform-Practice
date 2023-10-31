output "my_s3_bucket_name" {
  description = "The name of the created S3 bucket"
  value       = aws_s3_bucket.my-s3-bucket.id
}

output "my_s3_bucket_arn" {
  description = "The Amazon Resource Name (ARN) of the created S3 bucket"
  value       = aws_s3_bucket.my-s3-bucket.arn
}

output "my_s3_bucket_region" {
  description = "The AWS region in which the S3 bucket was created"
  value       = aws_s3_bucket.my-s3-bucket.region
}

output "my_s3_bucket_domain_name" {
  description = "The domain name of the S3 bucket"
  value       = aws_s3_bucket.my-s3-bucket.bucket_domain_name
}
