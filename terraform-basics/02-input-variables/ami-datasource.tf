data "aws_ami" "amzn2" {
  most_recent      = true
  owners           = ["amazon"]

    filter {
        name   = "name"
        values = ["al2023-ami-*-kernel-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name   = "architecture"
        values = ["x86_64"]
    }
}
