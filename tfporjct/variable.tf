variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}


# variable "ec2_tags" {
#     type = map
#     default = {
#         Name = var.instances[count.index]
#         Terraform = true
#         Project = "BETANXT"
#         Environment = "Production"
#     }
# }

variable "instances" {
    default = ["db1","db2","db3"]
}


variable "zone_id"{
    default = "Z096778411CYC46C0VA5Q"
}

variable "domain_name" {
    default = "anilkathoju.space"
}
