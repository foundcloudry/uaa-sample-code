include {
  path = find_in_parent_folders()
}

inputs = {
  name = "demo"
  sub_domain = "demo"
}

terraform {
  source = "../../../../../..//modules/identity-zone"
}
