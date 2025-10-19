data "aws_ami" "roboshop" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["*RHEL*"]
  }
}


output "ami_id" {
  value = data.aws_ami.roboshop.id
}

data "aws_instance" "mongodb" {
    instance_id = "i-03aa5cc2c5e3e4014"
}
output "mongodb_info" {
    value = {
        public_ip  = data.aws_instance.mongodb.public_ip 
    }
}