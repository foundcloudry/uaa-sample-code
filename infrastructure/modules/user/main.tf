resource "random_string" "password" {
  length  = 24
  special = false
  lower   = true
  upper   = true
  numeric = true
}

resource "uaa_user" "user" {
  name = var.username
  email = var.email
  password = coalesce(var.password, random_string.password.result)
  given_name = var.first_name
  family_name = var.last_name
  groups = var.groups
  zone_id = var.zone_id
}
