data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners   = ["099720109477"]
}

resource "aws_instance" "pi-hole" {
  ami                                  = data.aws_ami.ubuntu.id
  instance_type                        = var.instance_type
  key_name                             = var.key_name
  associate_public_ip_address          = var.public_ip
  vpc_security_group_ids               = [var.sg]
  subnet_id                            = var.subnet
  availability_zone                    = var.zone

  tags = {
    Createdby            = "Terraform"
    Owner                = var.owner
    Name                 = var.tag_name
    Env                  = var.env
    iam_instance_profile = var.iam_profile
    "Patch Group"        = var.Patch_Group
  }
}