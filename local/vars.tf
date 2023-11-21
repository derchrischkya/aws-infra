variable "prometheus_username" {
  type        = string
  description = "The username for Prometheus"
  default     = ""
}

variable "prometheus_password" {
  type        = string
  description = "The password for Prometheus"
  default     = ""
}

variable "loki_username" {
  type        = string
  description = "The username for Loki"
  default     = ""
}

variable "loki_password" {
  type        = string
  description = "The password for Loki"
  default     = ""
}