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

inputs = {
  display_name = "demo.write"
  description = "Write access to demo app"
  zone_id = dependency.demo_zone.outputs.zone.id
}

terraform {
  source = "../../../../../../..//modules/group"
}
