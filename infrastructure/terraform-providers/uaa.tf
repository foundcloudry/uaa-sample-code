variable "uaa_url" {
  type    = string
  default = null
}

variable "uaa_auth_url" {
  type    = string
  default = null
}

variable "uaa_login_url" {
  type    = string
  default = null
}

variable "uaa_client_secret" {
  type = string
}

variable "uaa_client_id" {
  type    = string
  default = "admin"
}

variable "uaa_skip_ssl_validation" {
  type    = bool
  default = false
}

provider "uaa" {
  login_endpoint      = coalesce(var.uaa_login_url, var.uaa_url)
  auth_endpoint       = coalesce(var.uaa_auth_url, var.uaa_url)
  client_id           = var.uaa_client_id
  client_secret       = var.uaa_client_secret
  skip_ssl_validation = var.uaa_skip_ssl_validation
}