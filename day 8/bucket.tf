resource "aws_s3_bucket" "nishant_lambda_bucket" {
    bucket = "lambda-nishant-bucket-demo"
     force_destroy = true
}

# resource "aws_s3_bucket_public_access_block" "nishant_lambda_bucket" {
#     bucket = "lambda-nishant-bucket-demo"
#     block_public_acls = true
#     block_public_policy = true
#     ignore_public_acls = true
#     restrict_public_buckets = true
# }