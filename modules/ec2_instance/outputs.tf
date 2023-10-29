output "instance_id" {
  value = aws_instance.my-terraform-insatnce.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-bucket
}
