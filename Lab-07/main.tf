module "subnet_addrs" {
  source          = "hashicorp/subnets/cidr"
  version         = "1.0.0"
  base_cidr_block = "10.0.0.0/22"
  networks = [
    {
      name     = "module_network_a"
      new_bits = 2
    },
    {
      name     = "module_network_b"
      new_bits = 2
    }
  ]
}

output "subnet_addrs" {
  value = module.subnet_addrs.network_cidr_blocks
}


// this module doesn't create anything on aws, it just calculates the subnets for the given cidr block and new bits
// and returns the cidr blocks of the subnets
