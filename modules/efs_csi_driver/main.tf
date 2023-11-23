resource "helm_release" "efs_csi_driver" {
  name       = "efs-csi-driver"
  repository = "https://kubernetes-sigs.github.io/aws-efs-csi-driver/"
  chart      = "aws-efs-csi-driver"
  namespace  = "kube-system"

  set {
    name = "controller.serviceAccount.name"
    value = var.cluster_name
  }
}
