data "aws_availability_zones" "myaz" {
  state = "available"
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_instance" "ec2demo" {
  subnet_id = var.ec2_subnet_id
  ami = data.aws_ami.amzn2.id
  # instance_type = var.ec2_instance_type # For String
  # instance_type = var.ec2_instance_type_list[1] # For List
  instance_type = var.ec2_instance_type_map["prod"] # For Map
  vpc_security_group_ids = [aws_security_group.sg-ssh.id, aws_security_group.sg-web.id]
  key_name = var.ec2_instance_keypair
  user_data = file("${path.module}/script.sh")

  # count = 3
  foreach = toset(data.aws_availability_zones.myaz.names)
  availability_zone = each.key

  tags = {
    Name = "ec2demo-foreach-${each.value}"
  }
}
