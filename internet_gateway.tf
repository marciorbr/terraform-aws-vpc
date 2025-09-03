resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "igw-${var.envionment}-${var.project_name}"
  }
}