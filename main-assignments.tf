provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "assignment-1" {
  ami = "ami-0ccf0745a25b6c3a4"
  instance_type = "t2.micro"
  tags = {
    Name = "Assignment-2"
    environment = "dev"
    Owner = "Xhoni"
  }
}

