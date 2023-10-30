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
