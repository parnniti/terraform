output "instance_public_ip" {
  value       = aws_instance.ec2demo.public_ip
  description = "EC2 instance public ip"
}

output "instance_public_dns" {
  value       = aws_instance.ec2demo.public_dns
  description = "EC2 instance public dns"
}
