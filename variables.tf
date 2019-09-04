variable "region" {
  default = "Insert region here"
}

variable "instance_type" {
  default     = "t2.nano"
  description = "Instance type"
}

variable "key_name" {
  default     = "Insert key pair name here"
  description = "Key name to be used on the instance"
}

variable "tag_name" {
  default     = "Tag name of the instance"
  description = "Tags for the instance"
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
  description = "This can be used for AWS SSM"
}

variable "iam_profile" {
  default     = "Insert IAM role for the instance"
  description = "The profile to assign to the instance"
}

variable "zone" {
  default = "Insert the zone for the instance deployment"
}