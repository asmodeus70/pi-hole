
# Module `subnets/`

Provider Requirements:
* **aws:** (any version)

## Input Variables
* `vpc` (required): VPC to use for this subnet
* `zone` (required): The availability zone for the subnet

## Output Values
* `subnets`: The public IP address of the main server instance.

## Managed Resources
* `aws_subnet.main-vpn` from `aws`

