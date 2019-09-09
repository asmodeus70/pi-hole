terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    bucket = "Bucket name goes here"
    key    = "Location within the bucket to create terraform.tfstate"
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnets"
  vpc    = module.vpc.vpc_id
  zone   = var.zone
}

module "security" {
  source = "./modules/sg/openvpn"
  vpc    = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  key_name      = var.key_name
  owner         = var.owner
  tag_name      = var.tag_name
  env           = var.env
  iam_profile   = var.iam_profile
  Patch_Group   = var.Patch_Group
  sg            = module.security.sg
  subnet        = module.subnet.subnets
  zone          = var.zone
}

resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_eip_association" "eip-asoc" {
  instance_id   = module.ec2.instance_id
  allocation_id = aws_eip.id

}

resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "ansible-playbook -i module.ec2.instance_ip_addr ./ansible/main.yml"
  }
}
