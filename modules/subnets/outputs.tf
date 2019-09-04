output "subnets" {
  value       = aws_subnet.main-vpn.id
  description = "The public IP address of the main server instance."
}