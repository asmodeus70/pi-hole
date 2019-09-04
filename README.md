# Pi Hole Terrform and Ansible Code

This is a work in progress to stand up a Pi-Hole server using Terraform and Ansible.

The Ansible part probably doesn't work properly because port 22 is blocked from my location.

Core Version Constraints:
* `>=0.12.0`

Provider Requirements:
* **aws:** `~> 2.0`
* **null:** (any version)

## Input Variables
* `Patch_Group` (default `"Ubuntu18"`): This can be used for AWS SSM
* `env` (default `"dev"`): The environment that this instance will be deployed to
* `iam_profile` (default `"Insert IAM role for the instance"`): The profile to assign to the instance
* `instance_type` (default `"t2.nano"`): Instance type
* `key_name` (default `"Insert key pair name here"`): Key name to be used on the instance
* `owner` (default `"Zaphod Beeblebrox"`): Who is responsible for this instance
* `region` (default `"Insert region here"`)
* `tag_name` (default `"Tag name of the instance"`): Tags for the instance
* `zone` (default `"Insert the zone for the instance deployment"`)

## Managed Resources
* `aws_eip.eip` from `aws`
* `aws_eip_association.eip-asoc` from `aws`
* `null_resource.ansible` from `null`

## Child Modules
* `ec2` from `./modules/ec2`
* `security` from `./modules/sg/openvpn`
* `subnet` from `./modules/subnets`
* `vpc` from `./modules/vpc`