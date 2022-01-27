resource "aws_s3_bucket" "state-bucket" {
  bucket = local.bucket_name
  acl    = "private"
  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "state-lock-table" {
  name         = local.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }
  tags = {
    Project = "Infrastructure"
  }
}
