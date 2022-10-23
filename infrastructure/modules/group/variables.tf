variable "display_name" {
  type        = string
  description = "The name of the group."
}

variable "description" {
  type        = string
  description = "The description of the group."
}

variable "zone_id" {
  type        = string
  description = "The identity zone that the group belongs to."
  default     = null
}
