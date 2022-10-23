include {
  path = find_in_parent_folders()
}

inputs = {
  display_name = "demo.read"
  description = "Read access to demo app"
}

terraform {
  source = "../../../../../../..//modules/group"
}
