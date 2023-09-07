resource "aws_instance" "ec2_instance" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
  key_name      = "MyKeyPairEC2"

  subnet_id                   = aws_subnet.vpc_public_subnet_u.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  tags = {
    "Name" : "ec2-instance-U1"
  }
}