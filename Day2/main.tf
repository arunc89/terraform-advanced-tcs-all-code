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


resource "aws_instance" "nishant-ec2-deployment" {

  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t2.micro"
  count                       = var.instance_count
  associate_public_ip_address = var.enable_public_id
  tags                        = var.project_tags

}


variable "instance_count" {
  type    = number
  default = 2

}
variable "enable_public_id" {
  type    = bool
  default = true

}

variable "project_tags" {
  type = map(string)
  default = {
    "Name"       = "ec2-instance"
    "project"    = "project-beta"
    "enviroment" = "dev"
  }

}
