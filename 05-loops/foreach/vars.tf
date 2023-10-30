variable aws_region {
  type        = string
  default     = "ap-southeast-1"
  description = "AWS region"
}

variable aws_profile {
  type        = string
  default     = "ChaiyoPowerUserRole"
  description = "AWS Profile"
}

variable chaiyo_nonprod_vpc {
  type = string
  default = "vpc-03b499e504dc4838e"
  description = "chaiyo-nonprod-vpc"
}

variable ec2_subnet_id {
  type = string
  default = "subnet-04c454d12b060d866"
  description = "chaiyo-nonprod-app-a"
}

variable ec2_instance_type {
  type        = string
  default     = "t2.medium"
  description = "Instance Type"
}

variable ec2_instance_keypair {
  type        = string
  default     = "terraform-key"
  description = "AWS EC2 key pair that will be associated"
}

variable ec2_instance_type_list {
  type = list(string)
  description = "List of AWS EC2 instance types"
  default = ["t3.micro", "t3.small", "t3.medium"]
}

variable ec2_instance_type_map {
  type = map(string)
  description = "Map of AWS EC2 instance type"
  default = {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.medium"
  }
}
