generate "requirements" {
  path      = "provider-requirements.tf"
  if_exists = "overwrite"
  contents  = file("../terraform-providers/requirements.tf")
}

generate "aws" {
  path      = "provider-aws.tf"
  if_exists = "overwrite"
  contents  = file("../terraform-providers/aws.tf")
}

generate "uaa" {
  path      = "provider-uaa.tf"
  if_exists = "overwrite"
  contents  = file("../terraform-providers/uaa.tf")
}

