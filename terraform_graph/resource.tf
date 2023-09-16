resource "aws_instance" "mynewec2" {
     ami = "ami-08e5424edfe926b43"
    instance_type = "t2.micro"
    tags = { 
        Name = "my-first-ec2"
    }  
}

resource "aws_eip" "lb" {
    vpc = true
    instance = aws_instance.mynewec2.id  
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"  

    ingress {
        description = "TLS from vpc"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["${aws_eip.lb.private_ip}/32"]
    }

    ingress {
        description = "TLS from vpc"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["${aws_eip.lb.private_ip}/32"]
    }
}
