provider "aws" {
    region = "us-east-1"
  
}

# terraform import aws_s3_bucket.nishant-aws-bucket nishant-aws-bucket
resource "aws_s3_bucket" "nishant-aws-bucket" {

}

resource "aws_s3_bucket_acl" "example" {

}

