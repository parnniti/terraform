variable aws_region {
  type        = string
  default     = "ap-southeast-1"
  description = "AWS region"
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

variable aws_profile {
  type        = string
  default     = "ChaiyoPowerUserRole"
  description = "AWS Profile"
}
