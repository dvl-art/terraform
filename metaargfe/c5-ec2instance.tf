resource "aws_instance" "Prod" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.aws_single_instance
  vpc_security_group_ids = [aws_security_group.ssh-sg.id, aws_security_group.web-sg.id]
  
  key_name        = var.aws_keypair_name
  count           = 2

  user_data = count.index == 0 ? file("${path.module}/jenkinsinstall.sh") : ""


  tags = {
    "Name" = "Prod-instance-${count.index}"
  }
}