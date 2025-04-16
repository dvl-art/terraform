variable "aws_region" {
  type    = string
  default = "eu-west-1"

}

variable "aws_single_instance" {
  type    = string
  default = "t2.micro"
}

variable "instance_type_list" {
  type    = list(string)
  default = ["t2.micro", "t2.nano", "t2.medium"]
}

variable "instance_type_map" {
  type = map(string)
  default = {
    "Dev"  = "t2.micro"
    "Qa"   = "t2.medium"
    "Prod" = "t2.medium"
  }
}

variable "aws_keypair_name" {
  type    = string
  default = "terraform-key"
}


