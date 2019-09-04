resource "aws_vpc" "ovpn" {
  cidr_block = var.cidr

  tags = {
    Name = "VPN"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.ovpn.id

  tags = {
    Name = "VPN-IGW"
  }
}