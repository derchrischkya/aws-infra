module "efs" {
  source = "../efs" # Adjust the path to your module directory
  vpc_id = module.vpc.vpc_id # Reference your VPC module
  private_subnets = module.vpc.private_subnets # Reference your VPC module
  vpc_cidr_block = module.vpc.private_subnets_cidr_blocks
  efs_creation_token = "eks-efs"
  oicd_provider = module.eks.oidc_provider
  oidc_provider_arn = module.eks.oidc_provider_arn
}