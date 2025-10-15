resource "aws_instance" "roboshop" {
        for_each = var.instances
        ami = "ami-09c813fb71547fc4f"
        instance_type = each.value
        tags = {
            Name = each.key
            Terraform = true
        }
}