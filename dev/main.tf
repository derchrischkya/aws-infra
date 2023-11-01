provider "aws" {
  profile = "acloudguru-dev"
  region  = "us-east-1"
}

module "root-module" {
  source = "../modules/root"
  ### VPC ### 
  vpc_name           = "eks-terraform-vpc"
  enable_nat_gateway = true
  enable_vpn_gateway = true

  ### Cluster ##
  cluster_name                    = "eks-terraform-project"
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
}
