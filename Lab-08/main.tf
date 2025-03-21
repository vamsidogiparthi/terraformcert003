// Provider Block to define the provider needed
provider "aws" {
  region = var.aws_region

}

// Data block to get the available availability zones and current region
data "aws_availability_zones" "available" {}
data "aws_region" "current" {}

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name       = var.vpc_name
    Envionment = "test"
    Terraform  = "true"
    Region     = data.aws_region.current.name
  }
}


