resource "aws_subnet" "main-vpn" {
  vpc_id            = var.vpc
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.zone

  tags = {
    Name = "vpn-subnet"
  }
}
