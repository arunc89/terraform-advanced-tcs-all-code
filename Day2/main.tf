provider "aws" {
    region = "us-east-1"
}
module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.8.2"

    bucket = "my-s3-bucket-nishant"
    acl    = "private"

  versioning = {
    enabled = true
  }
}