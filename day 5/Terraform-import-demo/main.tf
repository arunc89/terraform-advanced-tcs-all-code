provider "aws" {
  region = "us-east-1"
}

# terraform import aws_instance.terraform-nishant i-0457953be8f25edd5


resource "aws_instance" "terraform-nishant" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Nishant-terraform-instance"
  }

}