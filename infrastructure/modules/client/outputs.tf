output "client_secret" {
  value     = uaa_client.client.client_secret
  sensitive = true
}