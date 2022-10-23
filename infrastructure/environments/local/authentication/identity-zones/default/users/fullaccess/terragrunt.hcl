include {
  path = find_in_parent_folders()
}

dependency "demo-read" {
  config_path = "../../groups/demo.read"
  mock_outputs = {
    display_name = "mock-name"
  }
}

dependency "demo-write" {
  config_path = "../../groups/demo.write"
  mock_outputs = {
    display_name = "mock-name"
  }
}

inputs = {
  username   = "fullaccess"
  password   = "fullaccess"
  first_name = "Full"
  last_name  = "Access"
  email      = "fullaccess@default.foundcloudry.com"
  groups     = [
    dependency.demo-read.outputs.display_name,
    dependency.demo-write.outputs.display_name,
  ]
}

terraform {
  source = "../../../../../../..//modules/user"
}
