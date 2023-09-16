provider "aws" {
}

locals {
  common_tags = {
    Owner = "Devops Team"
    Service = "backend"
  }
}

resource "aws_instance" "newec2instance" {
  ami = "ami-08e5424edfe926b43"
  instance_type = var.list[2]
  tags = local.common_tags
}
