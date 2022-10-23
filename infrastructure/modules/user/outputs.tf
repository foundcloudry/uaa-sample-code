output "password" {
  value     = uaa_user.user.password
  sensitive = true
}