provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3-avm" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3-avm"
    yor_trace            = "fe83a2cc-0061-4a7b-9ecd-94bd9bd34cf3"
    git_commit           = "42964d9802504b595b965462e2ea055833424649"
    git_file             = "code/code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:39:30"
    git_last_modified_by = "56946955+darkhorse1212@users.noreply.github.com"
    git_modifiers        = "56946955+darkhorse1212"
    git_org              = "darkhorse1212"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3-avm" {
  bucket = aws_s3_bucket.dev_s3-am.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
