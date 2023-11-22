provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "remote" {
    organization = "derchrischkya"
    workspaces {
      name = "aws-infra-dev"
    }
  }
}

locals {
  prometheus_password = var.prometheus_password
  prometheus_username = var.prometheus_username
  loki_password       = var.loki_password
  loki_username       = var.loki_username
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

  ### Grafana ###
  prometheus_password = var.prometheus_password
  prometheus_username = var.prometheus_username
  loki_password       = var.loki_password
  loki_username       = var.loki_username
  #prometheus_url = 
  #loki_url = 
}
