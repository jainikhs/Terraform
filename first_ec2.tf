provider "aws" {
  region     = "ap-south-1"
  access_key = "my access key"
  secret_key = "my secret key"
}

resource "aws_instance" "myec2" {
    ami = "ami-08e5424edfe926b43"
    instance_type = "t2.micro"
    tags = {
        Name = "my-first-ec2"
    }
}
