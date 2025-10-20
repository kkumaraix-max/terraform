variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "security" {
    type = string
    default = "allowallports_v1"
}

# # variable "instance_type" {
# #     type = string
# #     default = "t3.micro"
# }

# variable "instances" {
#     default = ["mysql","db2"]
# }

variable "instances" {
    default = {
      mysql3 = "t3.micro"
      db3 = "t3.micro"

    }
}