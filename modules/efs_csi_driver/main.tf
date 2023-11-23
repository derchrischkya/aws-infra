resource "helm_release" "efs_csi_driver" {
  name       = "efs-csi-driver"
  repository = "https://kubernetes-sigs.github.io/aws-efs-csi-driver"
  chart      = "aws-efs-csi-driver"
  namespace  = "kube-system"


  set {
    name = "controller.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    value = var.service_account_role_arn
  }

  set {
    name = "storageClasses[0]"
    value = jsonencode({
      "name" : "efs-sc",
      "parameters" : {
        "fileSystemId" : var.efs_id,
        "directoryPerms" : "777",
        "path" : "/",
        "provisionerName" : "efs.csi.aws.com"
      }
    })
  }
}
