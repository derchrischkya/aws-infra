resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "k8s-monitoring"
  namespace  = "default"

  set {
    name = "cluster.name"
    value = var.cluster_name
  }

  set {
    name = "externalServices.prometheus.host"
    value = var.prometheus_url
  }

  set {
    name = "externalServices.prometheus.basicAuth.username"
    value = var.prometheus_username
  }

  set {
    name = "externalServices.prometheus.basicAuth.password"
    value = var.prometheus_password
  }

  set {
    name = "externalServices.loki.host"
    value = var.loki_url
  }

  set {
    name = "externalServices.loki.basicAuth.username"
    value = var.loki_username
  }

  set {
    name = "externalServices.loki.basicAuth.password"
    value = var.loki_password
  }

  set {
    name = "opencost.opencost.exporter.defaultClusterId"
    value = var.cluster_name
  }

  set {
    name = "opencost.prometheus.external.url"
    value = "${var.prometheus_url}/api/prom"
  }
}
