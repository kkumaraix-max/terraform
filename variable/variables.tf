variable "ami_id" {
  type =  string  
  default     = "ami-09c813fb71547fc4f"
  
}

variable "instance_type" {
    type =  string
    default = "t3.micro"
}

variable "tags" {
    type =  map 
    default = {
        Name = "mongodb"
        Terraform = "true"
        Project = "JoinDevOps"
        }

    
}