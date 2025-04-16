variable "instance_names" {
  default = ["prod", "qa", "dev"]
}

variable "aws_region" {
  description = "Region in which aws resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 instance"
  type        = string
  default     = "terraform-key"
}

variable "instance_list_type" {
  description = "List variable instance type"
  type        = list(string)
  default     = ["t2.micro", "t2.small", "t2.mediu"]

}

variable "instance_type_map" {
  description = "Map type for instance type"
  type        = map(string)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t2.nano"
    "prod" = "t2.medium"
  }
}