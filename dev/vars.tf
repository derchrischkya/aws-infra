variable "prometheus_username" {
  type        = string
  description = "The username for Prometheus"
}

variable "prometheus_password" {
  type        = string
  description = "The password for Prometheus"
}

variable "loki_username" {
  type        = string
  description = "The username for Loki"
}

variable "loki_password" {
  type        = string
  description = "The password for Loki"
}

variable "AWS_ACCESS_KEY_ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}