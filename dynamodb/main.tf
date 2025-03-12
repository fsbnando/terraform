resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "terraform"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}