provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "nishant-ec2-deployment" {

  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t2.micro"
  count                       = var.instance_count
  associate_public_ip_address = var.enable_public_id
  tags                        = var.project_tags

}

terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key = "nishant/terraform/remote/s3/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb-table-name"
  }
}

# we use terraform validate to check the code for any configuration errors/ syntax errors before we plan it out 
# terraform fmt -> to format the code .

