resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.accept_all.id]
    tags = local.ec2_tags
}

resource "aws_security_group" "accept_all" {
  name   = "${local.common_name}-accept_all"

  egress {
    from_port        = var.egress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.egress_to_port
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr_blocks # internet
  }

  ingress {
    from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr_blocks # internet
  }

  # tags = merge (
  #      var.common_tags,
  #      {
  #       Name = "${local.common_name}-accept_all"
  #      }
      
  #   )
    tags = local.sg_tags
}