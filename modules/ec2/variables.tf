variable "instance_type" {
  default     = "t2.nano"
  description = "Instance type"
}

variable "key_name" {
  description = "Key name to be used on the instance"
}

variable "tag_name" {
  default     = "AWS Instance"
  description = "Tags for the instance"
}

variable "public_ip" {
  default     = "false"
  description = "Assign public IP to instance"
}

variable "owner" {
  default     = "Zaphod Beeblebrox"
  description = "Who is responsible for this instance"
}

variable "env" {
  default     = "dev"
  description = "The environment that this instance will be deployed to"
}

variable "Patch_Group" {
  default = "Ubuntu18"
}

variable "iam_profile" {
  default     = "AmazonSSMManagedInstanceCore"
  description = "The profile to assign to the instance. This one is for SSM"
}

variable "sg" {
  description = "The ID of the security group"
}

variable "subnet" {
  description = "Subnet to assign to the instance"
}

variable "zone" {
  description = "The for the instance to be deployed to"
}