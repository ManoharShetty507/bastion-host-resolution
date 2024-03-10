output "ec2_instance_public_ip" {
  description = "The Instance Public IP"
  value       = aws_instance.dev-web-server.public_ip

}
