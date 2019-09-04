
# Module `vpc/`

Provider Requirements:
* **aws:** (any version)

## Input Variables
* `cidr` (default `"10.0.0.0/16"`)

## Output Values
* `vpc_id`: The ID of the VPC

## Managed Resources
* `aws_internet_gateway.gw` from `aws`
* `aws_vpc.ovpn` from `aws`

