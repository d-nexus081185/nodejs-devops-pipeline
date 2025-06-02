output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "web_dev_public_ip" {
  description = "Public IP of web/dev server"
  value       = aws_instance.web_dev.public_ip
}

output "production_private_ip" {
  description = "Private IP of production server"
  value       = aws_instance.production.private_ip
}

output "database_private_ip" {
  description = "Private IP of database server"
  value       = aws_instance.database.private_ip
}

output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = aws_lb.main.dns_name
}
