provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "nishant-ec2" {

  ami                         = "ami-02eb7a4783e7e9317"
  instance_type               = "t2.micro"
  count                       = var.instance_count
  associate_public_ip_address = var.enable_public_id
  tags                        = var.project_tags

}

