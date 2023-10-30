resource "aws_instance" "ec2demo" {
  ami = data.aws_ami.amzn2.id
  instance_type = var.ec2_instance_type
  vpc_security_group_ids = [aws_security_group.sg-ssh.id, aws_security_group.sg-web.id]
  key_name = var.ec2_instance_keypair
  user_data = file("${path.module}/script.sh")
  tags = {
    Name = "ec2demo"
  }
}
