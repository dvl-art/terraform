module "vpc-prod" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"
  #version = "~> 5.0"

  name   = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block

  azs                 = var.vpc_availability_zones
  private_subnets     = var.vpc_private_subnets
  public_subnets      = var.vpc_public_subnets
  
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  database_subnets    = var.vpc_database_subnets
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
  enable_dns_hostnames = true
  enable_dns_support = true

  public_subnet_tags = {
    Name = "prod-public-subnets"
  }

  private_subnet_tags = {
    Name = "prod-private-subnets"
  }

  database_subnet_tags = {
    Name = "database-subnets"
  }

  tags = local.common_tags

vpc_tags = local.common_tags
}