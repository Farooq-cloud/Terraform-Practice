variable "table_name" {
  description = "The name of the DynamoDB table."
  default     = "my-dynamo-db-table-tf"
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table (PROVISIONED or PAY_PER_REQUEST)."
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The hash key for the DynamoDB table."
  default     = "my-hash-key"
}

variable "range_key" {
  description = "The range key for the DynamoDB table."
  default     = "my-range-key"
}

variable "attributes" {
  description = "A list of attribute definitions for the DynamoDB table."
  type        = list(map(string))
  default     = [
    {
      name = "my-hash-key",
      type = "S"
    },
    {
      name = "my-range-key",
      type = "N"
    }
  ]
}
