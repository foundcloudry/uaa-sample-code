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
  zone_id    = dependency.demo_zone.outputs.zone.id
  username   = "admin"
  password   = "admin" // omit in upper envs to generate random string
  first_name = "Admin"
  last_name  = "User"
  email      = "admin@example.com"
  groups     = ["uaa.admin"]
}

terraform {
  source = "../../../../../../..//modules/user"
}
