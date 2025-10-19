resource "aws_instance" "terraform" {
    count = 2
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    tags = {
        Name = var.instances[count.index]
        Terraform = true
    }  
}

