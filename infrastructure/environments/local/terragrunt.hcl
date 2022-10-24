locals {
  aws_endpoint = "http://localhost:4566"
  aws_region   = "us-east-1"
  environment  = "local"
}

inputs = {
  aws_endpoint = local.aws_endpoint
  aws_region   = local.aws_region
  uaa_url           = "http://localhost:8080"
  uaa_client_id     = "admin"
  uaa_client_secret = "admin-secret"
  environment       = local.environment
}

remote_state {
  backend  = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config   = {
    access_key                  = "local"
    secret_key                  = "stack"
    profile                     = "localstack"
    region                      = local.aws_region
    bucket                      = "${local.environment}-terraform-state"
    key                         = "${path_relative_to_include()}/terraform.tfstate"
    dynamodb_table              = "${local.environment}-terragrunt-lock-table"
    encrypt                     = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    endpoint                    = local.aws_endpoint
    dynamodb_endpoint           = local.aws_endpoint
  }
}

generate "requirements" {
  path      = "provider-requirements.tf"
  if_exists = "overwrite"
  contents  = file("../../terraform-providers/requirements.tf")
}

generate "aws" {
  path      = "provider-aws.tf"
  if_exists = "overwrite"
  contents  = file("../../terraform-providers/localstack.tf")
}

generate "uaa" {
  path      = "provider-uaa.tf"
  if_exists = "overwrite"
  contents  = file("../../terraform-providers/uaa.tf")
}
