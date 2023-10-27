terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "> 5.0.0"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region = var.aws_region
}

resource "aws_instance" "ec2demo" {
  ami = "ami-06018068a18569ff2"
  instance_type = var.ec2_instance_type
  subnet_id = "subnet-04c454d12b060d866"
  tags = {
    Name = "ec2demo"
  }
}
