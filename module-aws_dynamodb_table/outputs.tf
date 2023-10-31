output "dynamodb_table_name" {
  value = aws_dynamodb_table.my-dynamo-db-table-tf.name
}

output "dynamodb_table_arn" {
  value = aws_dynamodb_table.my-dynamo-db-table-tf.arn
}

output "dynamodb_hash_key" {
  value = aws_dynamodb_table.my-dynamo-db-table-tf.hash_key
}

output "dynamodb_range_key" {
  value = aws_dynamodb_table.my-dynamo-db-table-tf.range_key
}
