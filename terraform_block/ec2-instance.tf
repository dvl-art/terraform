resource "aws_instance" "Prod" {
  ami = "ami-01621ce8f257d0d13"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    Name = "EC2-demo"
  }
  }