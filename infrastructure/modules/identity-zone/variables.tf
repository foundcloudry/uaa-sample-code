variable "name" {
  type        = string
  description = "The name of the identity zone"
}

variable "sub_domain" {
  type        = string
  default     = null
  description = "Unique subdomain for the running instance. May only contain legal characters for a subdomain name."
}

variable "company_name" {
  type        = string
  default     = null
  description = "This name is used on the UAA Pages and in account management related communication in UAA"
}

variable "company_logo" {
  type        = string
  default     = null
  description = "This is a base64Url encoded PNG image which will be used as the logo on all UAA pages like Login, Sign Up etc."
}

variable "favicon" {
  type        = string
  default     = null
  description = "This is a base64 encoded PNG image which will be used as the favicon for the UAA pages"
}
