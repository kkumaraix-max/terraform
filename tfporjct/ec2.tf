resource "aws_instance" "terraform" {
    count = 3
   ami = var.ami_id
   vpc_security_group_ids = [aws_security_group.allportsallowed.id]
   instance_type = var.instance_type
   tags = {
     Name = var.instances[count.index]
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