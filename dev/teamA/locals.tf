# ---------------------------------------------
# Locals
# ---------------------------------------------
locals {
  name_prefix       = "${var.project}-dev"
  enable_vpc        = false
  enable_routetable = false
  enable_subnet     = false
  enable_igw        = false
  enable_endpoint   = false
  enable_alb        = false
  enable_ecs        = false
  enable_rds        = false
  enable_route53    = false
  enable_acm        = false
  enable_cloudfront = false
  enable_s3         = true
  /*   tags = merge(
    var.common_tags,
    {
      #Name        = "take1"
      Environment = "dev"
      Owner       = "kita"
      Region      = "us-east-1"
    }
  ) */
  common_tags = {
    Project = "take1"
    Team    = "dev"
  }



  subnets = {
    public_1a = {
      name                    = "take1-dev-public-subnet-1a"
      cidr_block              = "10.10.10.0/24"
      az                      = "us-east-1a"
      map_public_ip_on_launch = true
      tags                    = { Type = "public" }
    }
    public_1b = {
      name                    = "take1-dev-public-subnet-1b"
      cidr_block              = "10.10.12.0/24"
      az                      = "us-east-1b"
      map_public_ip_on_launch = true
      tags                    = { Type = "public" }
    }
    public_1d = {
      name                    = "take1-dev-public-subnet-1d"
      cidr_block              = "10.10.14.0/24"
      az                      = "us-east-1d"
      map_public_ip_on_launch = true
      tags                    = { Type = "public" }
    }

    private_1a = {
      name       = "take1-dev-private-subnet-1a"
      cidr_block = "10.10.0.0/24"
      az         = "us-east-1a"
      tags       = { Type = "private" }
    }
    private_1b = {
      name       = "take1-dev-private-subnet-1b"
      cidr_block = "10.10.2.0/24"
      az         = "us-east-1b"
      tags       = { Type = "private" }
    }
    private_1d = {
      name       = "take1-dev-private-subnet-1d"
      cidr_block = "10.10.4.0/24"
      az         = "us-east-1d"
      tags       = { Type = "private" }
    }

    rds_1a = {
      name       = "take1-dev-rds-subnet-1a"
      cidr_block = "10.10.20.0/24"
      az         = "us-east-1a"
      tags       = { Type = "rds" }
    }
    rds_1b = {
      name       = "take1-dev-rds-subnet-1b"
      cidr_block = "10.10.22.0/24"
      az         = "us-east-1b"
      tags       = { Type = "rds" }
    }
  }

  vpc_cidr = "10.10.0.0/18"
}
