provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "example" {
    for_each = var.instances
    ami = var.ami
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allowallports_v1.id] ## it will take sg from here else it will default sg
    tags = {
        Name = each.key
        terraform = true
    }

}

resource "aws_security_group" "allowallports_v1" {
  name   = var.security

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allowallports_v1"
  }

}