resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "vpc-${var.envionment}-${var.project_name}"
    Environment = var.envionment

  }
}