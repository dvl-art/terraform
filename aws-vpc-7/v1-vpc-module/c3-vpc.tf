module "vpc-prod" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"
  #version = "~> 5.0"

  name   = "vpc-prod"
  cidr = "10.0.0.0/16"

  azs                 = ["eu-west-1a", "eu-west-1b"]
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]
  
  create_database_subnet_group = true
  create_database_subnet_route_table = true
  database_subnets    = ["10.0.151.0/24", "10.0.152.0/24"]
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true
  enable_nat_gateway = true
  single_nat_gateway = true
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

  tags = {
    Owner = "jay"
    Environment = "prod"
  }

vpc_tags = {
    Name = "vpc-prod"
}
}