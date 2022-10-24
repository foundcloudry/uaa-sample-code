terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    uaa = {
      source  = "foundcloudry/uaa"
      version = "~> 1.0.1"
    }
  }
  required_version = ">= 0.13"
}
