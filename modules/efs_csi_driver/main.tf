resource "helm_release" "efs_csi_driver" {
  name       = "efs-csi-driver"
  repository = "https://kubernetes-sigs.github.io/aws-efs-csi-driver"
  chart      = "aws-efs-csi-driver"
  namespace  = "kube-system"

  set {
    name    = "controller.serviceAccount.name"
    value   = "efs-csi-controller-sa"
  }

  # set {
  #   name = "controller.serviceAccount.create"
  #   value = "true"
  # }

  # set {
  #   name = "controller.serviceAccount.annotations.eks.amazonaws.com/role-arn"
  #   value = var.service_account_role_arn
  # }
}
