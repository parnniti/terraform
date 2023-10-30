# Datasource
data "aws_availability_zones" "myaz" {
    state = "available"
    filter {
        name = "region-name"
        values = [var.aws_region]
    }
    filter {
        name   = "opt-in-status"
        values = ["opt-in-not-required"]
    }
}

data "aws_ec2_instance_type_offerings" "my_instance_types" {
    for_each = toset(data.aws_availability_zones.myaz.names)
    filter {
        name   = "instance-type"
        values = var.ec2_instance_type_list
    }

    filter {
        name   = "location"
        values = [each.value]
    }

    location_type = "availability-zone"
}

# Output
output "output_az" {
    value = data.aws_availability_zones.myaz.names
}

output "output_instance_types" {
    value = {
        for az, data in data.aws_ec2_instance_type_offerings.my_instance_types:
            az => data.instance_types if length(data.instance_types) != 0
    }
}
