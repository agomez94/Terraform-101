variable "default_tags" {
  type = map(string)
  default = {
    "env" = "terraform-agomez"
  }
  description = "My tag with my name Terraform"
}

variable "public_subnet_count" {
  type        = number
  description = "default"
  default     = 2
}


variable "vpc_cidr" {
  type        = string
  default     = "11.0.0.0/16"
  description = "Main vpc cidr block"

}

variable "private_subnet_count" {
  type        = number
  description = "Private subnet count"
  default     = 2
}

variable "sg_db_ingress" {
  type = map(object({
    port     = number
    protocol = string
    self     = bool
  }))
  default = {
    myspl = {
      port     = 3306
      protocol = "tcp"
      self     = true
    }
  }
}

variable "sg_db_egress" {
  type = map(object({
    port     = number
    protocol = string
    self     = bool
  }))
  default = {
    all = {
      port     = 0
      protocol = "-1"
      self     = true
    }
  }
}

variable "db_credentials" {
  type      = map(any)
  sensitive = true
  default = {
    username = "username"
    password = "password"
  }
}