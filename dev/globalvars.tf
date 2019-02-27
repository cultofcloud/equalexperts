# Configure the AWS Provider (assume_role is a better option to use instead of keys)
#-----------------------------------------------------------------------------------
provider "aws" {
  access_key = "*******"
  secret_key = "*******"
  region     = "ap-south-1"
}

# Variables
#---------------------------------------

variable "ami" {
  default = "ami-0b4e9d7246704847c"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
    default = "ansible_key"
}

