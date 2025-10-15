resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.environment == "qa" ? "t3.micro" : "t3.small"

    vpc_security_group_ids = [aws_security_group.allow_all289.id]
    tags = {
        Name = "db"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all289" {
  name   = "allow-all289"

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
    Name = "allow-all289"
  }

}