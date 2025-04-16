resource "aws_instance" "Prod" {
  ami = data.aws_ami.amzlinux2.id
  #instance_type = var.instance_type
  #instance_type = var.instance_list_type[1]        # For list
  instance_type = var.instance_type_map["prod"]   # FOr map
  #instance_type = var.instance_type_map[var.instance_names[count.index]]
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]

  #count = length(var.instance_names)
  count = 2

  tags = {
    #Name = var.instance_names[count.index]
    "Name" = "Count-Demo-${count.index}"
  }
  }

  