# Datasource
data "aws_availability_zones" "myaz" {
  state = "available"
  filter {
    name = "region-name"
    values = [var.aws_region]
  }
}

data "aws_ec2_instance_type_offerings" "my_instance_type1" {
  filter {
    name   = "instance-type"
    values = var.ec2_instance_type_list
  }

  filter {
    name   = "location"
    values = data.aws_availability_zones.myaz.names
  }

  location_type = "availability-zone"
}

# Output
output "output_az" {
    value = data.aws_availability_zones.myaz.names
}

output "output_v1_1" {
    value = data.aws_ec2_instance_type_offerings.my_instance_type1.instance_types
}
