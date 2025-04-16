output "aws_public_dns" {
  value = toset([for instance in aws_instance.Prod : instance.public_dns])

}

output "aws_public_IP" {
  value = toset([for instance in aws_instance.Prod : instance.public_ip])
}

output "aws_instance_names" {
  value = toset([for instance in aws_instance.Prod : instance.tags])

}

output "aws_instance_map_publicdns" {
  value = tomap({ for az, instance in aws_instance.Prod : az => instance.public_dns })
}

# output "jenkins_instance_ip" {
#   value = aws_instance.Prod[0].public_ip
# }




