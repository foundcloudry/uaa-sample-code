include {
  path = find_in_parent_folders()
}

dependency "demo-read" {
  config_path = "../../groups/demo.read"
  mock_outputs = {
    display_name = "mock-name"
  }
}

inputs = {
  username   = "readonly"
  password   = "readonly"
  first_name = "Read"
  last_name  = "Only"
  email      = "readonly@default.foundcloudry.com"
  groups     = [
    dependency.demo-read.outputs.display_name,
  ]
}

terraform {
  source = "../../../../../../..//modules/user"
}
