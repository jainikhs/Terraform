# provider "aws" {
# }

# resource "aws_instance" "newec2instance" {
#   ami = "ami-08e5424edfe926b43"
#   instance_type = var.list[2]
#   count = 3
#   tags = {
#     Name = var.elb_name[count.index]
#   }
# }
