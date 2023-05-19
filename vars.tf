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