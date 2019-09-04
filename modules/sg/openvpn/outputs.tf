output "sg" {
  value       = aws_security_group.vpn.id
  description = "The ID of the security group"
}