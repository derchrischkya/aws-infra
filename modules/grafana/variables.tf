variable "cluster_name" {
    description = "The name of the cluster"
    type        = string 
}

variable "prometheus_password" {
    description = "The password for Prometheus"
    type        = string 
}

variable "prometheus_username" {
    description = "The username for Prometheus"
    type        = string 
}

variable "prometheus_url" {
    description = "The url for Prometheus"
    type        = string 
}

variable "loki_username" {
    description = "The username for Loki"
    type        = string 
}

variable "loki_password" {
    description = "The password for Loki"
    type        = string   
}

variable "loki_url" {
    description = "The url for Loki"
    type        = string 
}

