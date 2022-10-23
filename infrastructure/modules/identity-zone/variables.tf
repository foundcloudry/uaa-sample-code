variable "name" {
  type        = string
  description = "The name of the identity zone"
}

variable "sub_domain" {
  type        = string
  default     = null
  description = "Unique subdomain for the running instance. May only contain legal characters for a subdomain name."
}
