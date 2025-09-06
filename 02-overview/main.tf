terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-09b024e886d7bbe74"
  instance_type = "t3.micro"
  tags = {
    Name = "example-instance"
  }
}
