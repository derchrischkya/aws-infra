terraform {
//Do not uncomment this file. This file will be uncommented only in Github Actions
#   backend "remote" {
#     organization = "derchrischkya"
#     workspaces {
#       name = "ACloudGuru-AWS-Deployment"
#     }
#   }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.5.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
  required_version = ">= 0.13"
}