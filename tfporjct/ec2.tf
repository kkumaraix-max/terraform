resource "aws_instance" "BADEV" {
   ami = "ami-09c813fb71547fc4f"
   vpc_security_group_ids = [aws_security_group.allportsallowed.id]
   instance_type = "t3.micro"
   tags = {
    Name = "BADEV"
    Terraform = true
   }
}

resource "aws_security_group" "allportsallowed" {
    name = "allportsallowed"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "allportsallowed"
    }
}