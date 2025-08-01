output "vpc_information" {
  description = "VPC Information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}

output "public_ip" {
  description = "This is the public IP of my web server"
  value       = aws_instance.web_server.public_ip
}

output "public_url" {
  description = "Public URL for our Web Server"
  value       = "https://${aws_instance.web_server.private_ip}:8080/index.html"
}

output "ec2_instance_arn" {
  value     = aws_instance.web_server.arn
  sensitive = true
}