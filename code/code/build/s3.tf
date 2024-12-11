provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3-am" {
  bucket_prefix = "dev-"

  tags = {
    Environment = "Dev"
    yor_name    = "dev_s3-am"
    yor_trace   = "fe83a2cc-0061-4a7b-9ecd-94bd9bd34cf3"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3-am" {
  bucket = aws_s3_bucket.dev_s3-am.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
