provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAV4YTCFJ4NHXYOYLL"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-08e5424edfe926b43"
    instance_type = "t2.micro"
    tags = {
        Name = "my-first-ec2"
    }
}