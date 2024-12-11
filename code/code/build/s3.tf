provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3-am" {
  bucket_prefix = "dev-"

  tags = {
    Environment      = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3-am" {
  bucket = aws_s3_bucket.dev_s3-am.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
