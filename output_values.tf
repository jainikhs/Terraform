resource "aws_eip" "newlib" {
    domain = "vpc"
}

output "public_ip" {
    value = aws_eip.newlib
}