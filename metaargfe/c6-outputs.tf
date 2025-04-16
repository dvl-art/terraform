output "aws_public_dns" {
  value = [for instance in aws_instance.Prod : instance.public_dns]

}

output "aws_public_IP" {
  value = [for instance in aws_instance.Prod : instance.public_ip]
}

output "aws_instance_names" {
  value = [for instance in aws_instance.Prod : instance.tags]

}

output "jenkins_instance_ip" {
  value = aws_instance.Prod[0].public_ip
}


