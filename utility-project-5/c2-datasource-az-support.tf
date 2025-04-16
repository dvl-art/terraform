data "aws_ec2_instance_type_offerings" "my_instance_type1" {
  for_each = toset(["us-east-1a", "us-east-1b", "us-east-1e"])
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}

# output "output_v1_1" {
#   value = data.aws_ec2_instance_type_offerings.my_instance_type1.instance_types
# }
/*
output "output_v2_1" {
  value = toset([for instance in data.aws_ec2_instance_type_offerings.my_instance_type1 : instance.instance_types])
}
*/

# output "output_v2_2" {
#   value = {
#     for az, details in data.aws_ec2_instance_type_offerings.my_instance_type1: az => details.instance_types
#   }
# }