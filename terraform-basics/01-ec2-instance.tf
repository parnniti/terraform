terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "> 5.0.0"
    }
  }
}

provider "aws" {
  profile = "ChaiyoPowerUserRole"
  region = "ap-southeast-1"
}

resource "aws_instance" "ec2demo" {
  ami = "ami-06018068a18569ff2"
  instance_type = "t2.medium"
  subnet_id = "subnet-04c454d12b060d866"
  tags = {
    Name = "ec2-demo"
  }
}
