resource "aws_security_group" "vpn" {
  name        = "Allow_VPN_Traffic"
  description = "Allow VPN inbound traffic"
  vpc_id      = var.vpc

  ingress {
    from_port   = 1194
    to_port     = 1194
    protocol    = "UDP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPN-Traffic"
  }
}