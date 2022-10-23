include {
  path = find_in_parent_folders()
}

dependency "demo_zone" {
  config_path = "../../identity-zone"
  mock_outputs = {
    zone = {
      id = "mock-zone-id"
    }
  }
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
  zone_id = dependency.demo_zone.outputs.zone.id
  username   = "demofull"
  password   = "demofull"
  first_name = "Demo"
  last_name  = "Full"
  email      = "demofull@demo.foundcloudry.com"
  groups     = [
    dependency.demo-read.outputs.display_name,
    dependency.demo-write.outputs.display_name,
  ]
}

terraform {
  source = "../../../../../../..//modules/user"
}
