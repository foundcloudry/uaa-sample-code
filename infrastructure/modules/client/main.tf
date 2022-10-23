resource "random_string" "client_secret" {
  length      = 32
  lower       = true
  min_lower   = 3
  upper       = true
  min_upper   = 2
  numeric     = true
  min_numeric = 2
  special     = false
}

resource uaa_client "client" {
  client_id = var.client_id
  client_secret = coalesce(var.client_secret, random_string.client_secret.result)
  authorized_grant_types = var.authorized_grant_types
  redirect_uri = var.redirect_uris
  scope = var.scope
  access_token_validity = var.access_token_validity
  allowed_providers = var.allowed_providers
  approvals_deleted = var.approvals_deleted
  auto_approve = var.auto_approve
  refresh_token_validity = var.refresh_token_validity
  required_user_groups = var.required_user_groups
  zone_id = var.zone_id
}
