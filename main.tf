provider "aws" {
    region = "eu-central-1"
}
resource "aws_instance" "lab-1" {
    ami = "ami-0766f68f0b06ab145"
    instance_type = "t2.micro"
    tags = {
        Name = "test"
        environment = "dev"
    }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "eu-central-1a"
  size = 40
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.example.id
  instance_id = aws_instance.lab-1.id
}