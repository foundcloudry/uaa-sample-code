variable "aws_region" {
  type = string
}

variable "aws_endpoint" {
  type = string
}

variable "environment" {
  type = string
}

provider "aws" {
  region = var.aws_region
  access_key = "local"
  secret_key = "stack"
  profile = "localstack"
  skip_credentials_validation = true
  skip_metadata_api_check = true
  skip_requesting_account_id = true
  s3_use_path_style = true

  endpoints {
    apigateway = var.aws_endpoint
    apigatewayv2 = var.aws_endpoint
    dynamodb = var.aws_endpoint
    cloudwatch = var.aws_endpoint
    cloudwatchlogs = var.aws_endpoint
    cognitoidentity = var.aws_endpoint
    cognitoidentityprovider = var.aws_endpoint
    cognitoidp = var.aws_endpoint
    cognitosync = var.aws_endpoint
    ec2 = var.aws_endpoint
    ecr = var.aws_endpoint
    ecs = var.aws_endpoint
    iam = var.aws_endpoint
    kinesis = var.aws_endpoint
    kms = var.aws_endpoint
    lambda = var.aws_endpoint
    rds = var.aws_endpoint
    s3 = var.aws_endpoint
    secretsmanager = var.aws_endpoint
    sqs = var.aws_endpoint
    ssm = var.aws_endpoint
    sts = var.aws_endpoint
  }

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = true
    }
  }
}
