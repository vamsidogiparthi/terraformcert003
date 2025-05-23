variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "vpc_name" {
  type    = string
  default = "lab1-terraform-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

// name should be unique for each variable group in the variable block
// variables with default values. The CLI will not prompt for values during terraform plan/apply
variable "private_subnet" {
  default = {
    "private_subnet_1" = 0
    "private_subnet_2" = 1
    "private_subnet_3" = 2
  }
}

variable "public_subnet" {
  default = {
    "public_subnet_1" = 0
    "public_subnet_2" = 1
    "public_subnet_3" = 2
  }
}

// variables with no values. The CLI will prompt for values duing terraform plan/apply
variable "variables_sub_cidr" {
  description = "CIDR Block for the Variables Subnet"
  type        = string
  default     = "10.0.202.0/24"
}

variable "variables_sub_az" {
  description = "Availability Zone used for Variables Subnet"
  type        = string
  default     = "us-east-1a"
}

variable "variables_sub_auto_ip" {
  description = "Set Automatic IP Assigment for Variables Subnet"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}