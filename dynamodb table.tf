# Creating dynamodb table

resource "aws_dynamodb_table" "my-dynamo-db-table-tf" {
  name           = "my-dynamo-db-table-tf"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "my-hash-key"
  range_key      = "my-range-key"

  attribute {
    name = "my-hash-key"
    type = "S"
  }
attribute {
    name = "my-range-key"
    type = "N"
  }

}
