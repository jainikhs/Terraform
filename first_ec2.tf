provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "mynewec2" {
    ami = "ami-08e5424edfe926b43"
    instance_type = "t2.micro"
    tags = { 
        Name = "my-first-ec2"
    }
}