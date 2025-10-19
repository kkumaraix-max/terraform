provider "aws"{
    #configuration options
}

variable "instances" {
    default = ["redis","mongodb"]
}

variable "domain_name" {
    default = "anilkathoju.space"
}