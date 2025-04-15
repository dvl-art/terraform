# terraform Block

terraform {
  required_version = "v1.11.3"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
  
}

provider "aws" {
  region = "eu-west-1"
  profile = "default"
}