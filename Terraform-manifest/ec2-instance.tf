terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "ec2-prod" {
  ami                     = "ami-0df368112825f8d8f"
  instance_type           = "t2.micro"
}