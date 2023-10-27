terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    profile = "ChaiyoPowerUserRole"
    region = "ap-southeast-1"
}

resource "aws_instance" "ec2demo" {
    ami = "ami-06018068a18569ff2"
    instance_type = "t2.micro"
    subnet_id = "subnet-04c454d12b060d866"
    tags = {
      Name = "ec2-demo"
    }
}
