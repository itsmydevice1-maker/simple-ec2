variable "default_ami" {
    type = string
    default = "ami-0e12ffc2dd465f6e4"
}

variable "root_storage" {
    type = number
    default = 10
}

variable "vpc" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnet" {
    type = string
    default = "10.0.0.0/24"
}

variable "instance" {
    type = string
    default = "t3.small"
}

variable "instance_count" {
    type = number
    default = 1
  
}