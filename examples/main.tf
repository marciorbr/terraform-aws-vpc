locals {
  region       = "us-east-1"
  envionment   = "dev"
  project_name = "myproject"
  additional_aws_tags = {
    Owner      = "DevOpsTeam"
    Expires    = "Never"
    Department = "Engineering"
    ManagedBy  = "Terraform"
  }

  cidr_block = "10.200.0.0/18"
}

module "vpc" {
  source       = "../"
  cidr_block   = local.cidr_block
  envionment   = local.envionment
  project_name = local.project_name

}