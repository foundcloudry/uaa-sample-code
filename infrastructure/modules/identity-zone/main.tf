resource uaa_identity_zone "zone" {
  name = var.name
  sub_domain = var.sub_domain

  branding {
    company_name = var.company_name
    company_logo = var.company_logo
    favicon = var.favicon
  }
}
