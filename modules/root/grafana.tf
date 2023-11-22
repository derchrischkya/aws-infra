module "grafana" {
    source = "../grafana" 
    cluster_name = module.eks.cluster_name
    prometheus_username = var.prometheus_username
    prometheus_password = var.prometheus_password
    prometheus_url = var.prometheus_url
    loki_username = var.loki_username
    loki_password = var.loki_password
    loki_url = var.loki_url
}