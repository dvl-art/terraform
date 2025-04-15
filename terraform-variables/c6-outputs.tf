output "instance_public_ip" {
    description = "PublicIP of EC2 instance"
    value = aws_instance.Prod.public_ip

}

output "instance_public_dns" {
  description = "Publicdns"
  value = aws_instance.Prod.public_dns
}