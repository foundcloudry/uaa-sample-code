include {
  path = find_in_parent_folders()
}

inputs = {
  display_name = "demo.write"
  description = "Write access to demo app"
}

terraform {
  source = "../../../../../../..//modules/group"
}
