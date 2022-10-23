resource "uaa_group" "group" {
  display_name = var.display_name
  description = var.description
  zone_id = var.zone_id
}
