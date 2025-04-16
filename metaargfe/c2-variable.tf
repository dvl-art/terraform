variable "aws_region" {
  default = "eu-west-1"

}

variable "aws_single_instance" {
  default = "t2.micro"
}

variable "instance_type_list" {
  default = ["t2.micro", "t2.nano", "t2.medium"]
}

variable "instance_type_map" {
  default = {
    "Dev"  = "t2.micro"
    "Qa"   = "t2.medium"
    "Prod" = "t2.medium"
  }
}

variable "aws_keypair_name" {
  default = "terraform-key"
}


