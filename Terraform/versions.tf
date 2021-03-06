terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.14.1"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"

    }
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0.0"
    }
  }
  required_version = ">= 0.13"
}
