output "instance_ip_addr" {
  value       = aws_instance.pi-hole.public_ip
  description = "The public IP address of the main server instance."
}

output "instance_id" {
  value       = aws_instance.pi-hole.id
  description = "The ID of the instance"
}