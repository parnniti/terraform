# output "instance_public_ip" {
#   value       = aws_instance.ec2demo.public_ip
#   description = "EC2 instance public ip"
# }

# output "instance_public_dns" {
#   value       = aws_instance.ec2demo.public_dns
#   description = "EC2 instance public dns"
# }

# # OUTPUT For Loop - with List
# output "for_output_list" {
#     description = "For Loop with List"
#     value = [for instance in aws_instance.ec2demo: instance.private_ip]
# }

# # OUTPUT For Loop - with Map
# output "for_output_map" {
#     description = "For Loop with Map"
#     value = {for instance in aws_instance.ec2demo: instance.id => instance.private_ip}
# }

# # OUTPUT For Loop - with Map
# output "for_output_map2" {
#     description = "For Loop with Map - Advanced"
#     value = {for c, instance in aws_instance.ec2demo: c => instance.private_ip}
# }

# OUTPUT for Loop - with Splat operator
output "splat_output" {
    description = "For Loop with Map - Advanced"
    value = aws_instance.ec2demo[*].private_ip
}
