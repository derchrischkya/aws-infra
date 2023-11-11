variable "aws_region" {
  type        = string
  description = "Name of the region to select"
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID where EFS and mount targets will be created."
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block of the VPC."
  type        = list(string)
}

variable "private_subnets" {
  description = "A list of private subnets ids inside the VPC."
  type        = list(string)
}

variable "efs_creation_token" {
  description = "A unique identifier for the EFS file system."
  type        = string
  default     = "my-efs"
}

variable "efs_performance_mode" {
  description = "Performance mode for the EFS file system."
  type        = string
  default     = "generalPurpose"
}

variable "efs_throughput_mode" {
  description = "Throughput mode for the EFS file system."
  type        = string
  default     = "bursting"
}

variable "efs_encrypted" {
  description = "Set to true to encrypt the EFS file system."
  type        = bool
  default     = true
}

variable "efs_tags" {
  description = "A map of tags to apply to the EFS resources."
  type        = map(string)
  default     = {}
}

variable "oicd_provider" {
  description = "The OIDC provider created by the EKS cluster to allow access to the EFS file system."
  type        = string
}

variable "oidc_provider_arn" {
  description = "The OIDC provider ARN created by the EKS cluster to allow access to the EFS file system."
  type        = string
}