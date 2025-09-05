locals {
  region       = "us-east-1"
  environment  = "dev"
  project_name = "myproject"
  additional_aws_tags = {
    Owner      = "DevOpsTeam"
    Expires    = "Never"
    Department = "Engineering"
    ManagedBy  = "Terraform"
  }

  cidr_block           = "10.200.0.0/18"
  vpc_additional_cidrs = ["100.64.0.0/16"]

  public_subnets = [
    {
      name              = "public-1a"
      cidr              = "10.200.0.0/20"
      availability_zone = "us-east-1a"
    },
    {
      name              = "public-1b"
      cidr              = "10.200.16.0/20"
      availability_zone = "us-east-1b"
    }
  ]

  private_subnets = [
    {
      name              = "private-1a"
      cidr              = "10.200.48.0/21"
      availability_zone = "us-east-1a"
    },
    {
      name              = "private-1b"
      cidr              = "10.200.56.0/21"
      availability_zone = "us-east-1b"
    }
  ]

}

module "vpc" {
  source               = "../"
  cidr_block           = local.cidr_block
  environment          = local.environment
  project_name         = local.project_name
  vpc_additional_cidrs = local.vpc_additional_cidrs
  public_subnets       = local.public_subnets
  private_subnets      = local.private_subnets

}