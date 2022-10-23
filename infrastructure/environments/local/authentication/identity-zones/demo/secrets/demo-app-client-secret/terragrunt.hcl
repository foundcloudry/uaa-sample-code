include {
  path = find_in_parent_folders()
}

dependency "demo_client" {
  config_path = "../../clients/demo"
    mock_outputs = {
      client_secret = "mock-client-secret"
    }
}

inputs = {
  name = "/zones/demo/clients/demo/client-secret"
  description = "The secret for the demo client in the default identity zone"
  value = dependency.demo_client.outputs.client_secret
}

terraform {
  source = "../../../../../../..//modules/ssm-parameter"
}
