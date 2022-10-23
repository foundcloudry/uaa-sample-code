variable "name" {
  type        = string
  description = "Name of the parameter. If the name contains a path (e.g., any forward slashes (/)), it must be fully qualified with a leading forward slash (/)."
}

variable "type" {
  type        = string
  default     = "SecureString"
  description = "Type of the parameter. Valid types are String, StringList and SecureString."
}

variable "value" {
  type        = string
  description = "Value of the parameter"
}

variable "overwrite" {
  type        = bool
  default     = false
  description = "Overwrite an existing parameter"
}
