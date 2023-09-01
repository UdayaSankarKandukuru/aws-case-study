resource "aws_vpc" "u_vpc" {
  cidr_block = "60.0.0.0/16"

  tags = {
    Name = "VPC - U"
  }
}

resource "aws_internet_gateway" "u_ig" {
  vpc_id = aws_vpc.u_vpc.id

  tags = {
    Name = "Internet Gateway - U"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.u_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.u_ig.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.u_ig.id
  }

  tags = {
    Name = "Public Route Table"
  }
}
