terraform {
  required_version = ">1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    local = {
        source = "hashicorp/local"
        version = "~> 2.0"

    }
    tls = {
        source = "hashicorp/tls"
        version = "~> 3.0"
    }
  }
}

# this file show cases version pinning and injecting multiple providers