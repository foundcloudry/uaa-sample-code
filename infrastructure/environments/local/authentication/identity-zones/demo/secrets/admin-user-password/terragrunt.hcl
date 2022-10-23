include {
  path = find_in_parent_folders()
}

dependency "admin_user" {
  config_path = "../../users/admin"
  mock_outputs = {
    password = "mock-password"
  }
}

inputs = {
  name = "/zones/demo/users/admin/password"
  description = "The password for the admin user in the default identity zone"
  value = dependency.admin_user.outputs.password
}

terraform {
  source = "../../../../../../..//modules/ssm-parameter"
}
