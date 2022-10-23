variable "password" {
  type        = string
  default     = null
  description = "The user's password.  A random string will be generated if this is not provided."
}

variable "username" {
  type        = string
  description = "The user's username. This will be used for them to login."
}

variable "first_name" {
  type        = string
  description = "The user's first name."
}

variable "last_name" {
  type        = string
  default     = null
  description = "The user's surname."
}

variable "email" {
  type        = string
  description = "The user's email address."
}

variable "groups" {
  type        = list(string)
  description = "Any UAA groups / roles to associated the user with"
}

variable "zone_id" {
  type        = string
  description = "The identity zone that the user belongs to"
  default = ""
}
