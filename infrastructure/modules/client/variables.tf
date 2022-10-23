variable "client_id" {
  type        = string
  description = "Client identifier, unique within identity zone"
}

variable "client_secret" {
  type        = string
  default     = null
  description = "The secret to use for the client.  A random string will be generated if this is not provided."
}

variable "authorized_grant_types" {
  type        = list(string)
  description = "List of grant types that can be used to obtain a token with this client. Can include authorization_code, password, implicit, and/or client_credentials"
}

variable "scope" {
  type        = list(string)
  description = "Scopes allowed for the client"
}

variable "redirect_uris" {
  type        = list(string)
  default     = []
  description = "Allowed URI pattern for redirect during authorization"
}

variable "access_token_validity" {
  type        = number
  default     = 0
  description = "The time in seconds to access token expiration after it is issued"
}

variable "allowed_providers" {
  type        = list(string)
  default     = []
  description = "A list of origin keys (alias) for identity providers the client is limited to"
}

variable "approvals_deleted" {
  type        = bool
  default     = false
  description = "Were the approvals deleted for the client, and an audit event sent"
}

variable "auto_approve" {
  type        = list(string)
  default     = []
  description = "Scopes that do not require user approval"
}

variable "refresh_token_validity" {
  type        = number
  default     = 0
  description = "The time in seconds to refresh token expiration after it is issued"
}

variable "required_user_groups" {
  type        = list(string)
  default     = []
  description = "A list of group names"
}

variable "zone_id" {
  type        = string
  description = "The identity zone that the client belongs to"
  default = ""
}
