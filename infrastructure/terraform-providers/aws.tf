variable "aws_role_arn" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "environment" {
  type = string
}

provider "aws" {
  region = var.aws_region

  assume_role {
    role_arn = var.aws_role_arn
  }

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = true
    }
  }
}