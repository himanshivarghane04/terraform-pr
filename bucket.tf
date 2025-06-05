provider "aws" {
  region = "ap-south-1"  # Change to your region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-20250605"  # MUST be globally unique
  acl    = "private"                         # Options: private, public-read, etc.

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
