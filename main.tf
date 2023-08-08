resource "aws_instance" "name" {
  ami = var.os
  instance_type = var.type
  count = var.size



  tags = {
    Name = "Testing"
  }
}

variable "os" {
    type = string
    default = "ami-053b0d53c279acc90"
}

variable "type"{
    type = string
    default = "t2.micro"
}

variable "size"{
    type = string
    default = 1 
}
