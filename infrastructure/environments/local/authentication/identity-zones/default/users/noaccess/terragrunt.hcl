include {
  path = find_in_parent_folders()
}

inputs = {
  username   = "noaccess"
  password   = "noaccess"
  first_name = "No"
  last_name  = "Access"
  email      = "noaccess@default.foundcloudry.com"
  groups     = []
}

terraform {
  source = "../../../../../../..//modules/user"
}
