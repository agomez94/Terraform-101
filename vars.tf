variable "default_tags" {
    type = map(string)
    default = {
      "env" = "terraform_testing"
    }  
    description = "My tag with my name Terraform"
}

variable "public_subnet_count" {
  type = number
  description = "default"
  default = 2
}


variable "vpc_cidr" {
  type = string
  default = "11.0.0.0/16"
  description = "Main vpc cidr block"
  
}

variable "private_subnet_count" {
  type = number
  description = "Private subnet count"
  default = 2  
}