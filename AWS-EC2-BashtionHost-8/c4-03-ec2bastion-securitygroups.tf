module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"


  name        = "${local.name}-public-bastion-sg"
  description = "Security group for SSH port open for everyone within VPC"
  vpc_id = module.vpc-prod.vpc_id

  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags         = local.common_tags


}

