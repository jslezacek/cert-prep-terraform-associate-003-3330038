#rhel eu-west-1
resource "aws_instance" "ec2-instance1" {
  ami = "ami-07d4917b6f95f5c2a"
  instance_type = "t2.micro"
  tags = {
    Name = "demo_instance1"
  }
}

# ubuntu eu-central-1
resource "aws_instance" "ec2-instance2" {
  provider = aws.central
  ami = "ami-0e04bcbe83a83792e"
  instance_type = "t2.micro"

  tags = {
    Name = "demo_instance2"
  }
}