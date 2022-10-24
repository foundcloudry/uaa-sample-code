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
  client_id = "demo"
  client_secret = "demo-demo-APP-secret" // omit in upper envs to generate random string
  authorized_grant_types = ["authorization_code"]
  scope = [
    "openid",
    dependency.demo-read.outputs.display_name,
    dependency.demo-write.outputs.display_name,
  ]
  auto_approve = [ // don't require user to accept scopes after initial login
    "openid",
    dependency.demo-read.outputs.display_name,
    dependency.demo-write.outputs.display_name,
  ]
  redirect_uris = [
    "http://localhost:8083",
    "http://localhost:8083/",
    "http://localhost:8083/login/oauth2/code/uaa",
  ]
}

terraform {
  source = "../../../../../../..//modules/client"
}
