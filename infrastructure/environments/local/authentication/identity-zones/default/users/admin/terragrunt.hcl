include {
  path = find_in_parent_folders()
}

inputs = {
  username   = "admin"
  password   = "admin" // omit in upper envs to generate random string
  first_name = "Admin"
  last_name  = "User"
  email      = "admin@default.foundcloudry.com"
  groups     = ["uaa.admin"]
}

terraform {
  source = "../../../../../../..//modules/user"
}
