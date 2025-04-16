/*
output "instance_public_ip" {
    description = "PublicIP of EC2 instance"
    value = aws_instance.Prod.public_ip

}

output "instance_public_dns" {
  description = "Publicdns"
  value = aws_instance.Prod.public_dns
}

output "keypair_name" {
  description = "keypair name"
  value = aws_instance.Prod.key_name
  
}
*/

output "instance_list_type_public_dns" {
  description = "public dns of all instance with for loop"
  value = [for instance in aws_instance.Prod: instance.public_dns]
            
}

output "instance_map_type_pub_dns" {
  description = "for output map"
  value = {for instance in aws_instance.Prod: instance.id => instance.public_dns}
  
}

output "instance_map_type_advance_pub_dsn" {
  description = "for output map advance"
  value = {for c, instance in aws_instance.Prod: c => instance.public_dns}
  
}

output "legacy_splat_instance_publicdns" {
  description = "legacy splat operator"
  value = aws_instance.Prod.*.public_dns
  
}

output "latest_splat_instance_publicdns" {
  description = "legacy splat operator"
  value = aws_instance.Prod[*].public_dns
  
}

output "instance_list_type_public_ip" {
  description = "For loop for public ip"
  value = [for ip in aws_instance.Prod: ip.public_ip]
}

output "instance_map_type_public_ip" {
  description = "for output map public ip"
  value = {for instance in aws_instance.Prod: instance.id => instance.public_ip}
  
}

output "latest_splat_instance_instance_name" {
  description = "legacy splat operator"
  value = aws_instance.Prod[*].tags
  
}