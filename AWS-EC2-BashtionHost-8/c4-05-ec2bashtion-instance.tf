module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.8.0"

  name = "${local.name}-Basthin Host"

  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  #monitoring             = true
  subnet_id              = module.vpc-prod.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]


  tags = local.common_tags

}