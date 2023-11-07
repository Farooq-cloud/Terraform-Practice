output "instance_id" {
  value = aws_instance.my-terraform-insatnce.id
}
output "public_ip" {
  value = aws_instance.my-terraform-insatnce.public_ip
}
output "private-ip-address" {
  value =aws_instance.my-terraform-insatnce.private-ip
}
