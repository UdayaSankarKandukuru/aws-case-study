resource "aws_subnet" "vpc_public_subnet_u" {
  vpc_id            = aws_vpc.u_vpc.id
  cidr_block        = "60.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "VPC Public Subnet - U"
  }
}

resource "aws_subnet" "vpc_private_subnet_u" {
  vpc_id            = aws_vpc.u_vpc.id
  cidr_block        = "60.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "VPC Private Subnet - U"
  }
}

resource "aws_route_table_association" "public_1_rt_a" {
  subnet_id      = aws_subnet.vpc_public_subnet_u.id
  route_table_id = aws_route_table.public_rt.id
}