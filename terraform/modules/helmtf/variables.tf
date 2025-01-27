variable registry_username {
  type        = string
  default     = ""
  description = "description"
}

variable registry_password {
  type        = string
  default     = ""
  description = "description"
}

variable registry_email {
  type        = string
  default     = ""
  description = "description"
}

variable db_root_password {
  type        = string
  default     = ""
  description = "description"
}

variable db_user_password {
  type        = string
  default     = ""
  description = "description"
}

variable image_tag {
  type        = string
  default     = ""
  description = "description"
}

variable application_namespace {
  type        = string
  default     = ""
  description = "description"
}

variable database_namespace {
  type        = string
  default     = "database"
  description = "Database namespace"
}

variable config_path {
  type        = string
  default     = ""
  description = "description"
}

variable config_context {
  type        = string
  default     = ""
  description = "description"
}

variable helm_release_name {
  type        = string
  default     = ""
  description = "description"
}

variable helm_release_namespace {
  type        = string
  default     = ""
  description = "description"
}

variable helm_chart_directory {
  type        = string
  default     = ""
  description = "description"
}

variable helm_chart_values {
  type        = string
  default     = ""
  description = "descriptions"
}
