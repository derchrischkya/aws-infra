module "efs_csi_driver" {
    source = "../efs_csi_driver" # Adjust the path to your module directory
    service_account_role_arn = module.efs.efs_role_arn
}