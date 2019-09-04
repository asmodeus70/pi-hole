
# Module `ec2/`

Provider Requirements:
* **aws:** (any version)

## Input Variables
* `Patch_Group` (default `"Ubuntu18"`)
* `env` (default `"dev"`): The environment that this instance will be deployed to
* `iam_profile` (default `"AmazonSSMManagedInstanceCore"`): The profile to assign to the instance. This one is for SSM
* `instance_type` (default `"t2.nano"`): Instance type
* `key_name` (required): Key name to be used on the instance
* `owner` (default `"Zaphod Beeblebrox"`): Who is responsible for this instance
* `public_ip` (default `"false"`): Assign public IP to instance
* `sg` (required): The ID of the security group
* `subnet` (required): Subnet to assign to the instance
* `tag_name` (default `"AWS Instance"`): Tags for the instance
* `zone` (required): The for the instance to be deployed to

## Output Values
* `instance_id`: The ID of the instance
* `instance_ip_addr`: The public IP address of the main server instance.

## Managed Resources
* `aws_instance.pi-hole` from `aws`

## Data Resources
* `data.aws_ami.ubuntu` from `aws`

