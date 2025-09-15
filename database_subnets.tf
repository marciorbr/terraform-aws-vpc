resource "aws_subnet" "database" {
  count = length(var.database_subnets)

  vpc_id = aws_vpc.vpc.id

  cidr_block        = var.database_subnets[count.index].cidr
  availability_zone = var.database_subnets[count.index].availability_zone

  tags = {
    Name = "subnet-${local.name_prefix}-${var.database_subnets[count.index].name}"
  }

  depends_on = [
    aws_vpc_ipv4_cidr_block_association.main
  ]
}