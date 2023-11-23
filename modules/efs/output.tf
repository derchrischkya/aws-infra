output "efs_id" {
  description = "ID of the created EFS file system."
  value       = aws_efs_file_system.efs.id
}

output "efs_dns_name" {
  description = "DNS name of the created EFS file system."
  value       = aws_efs_file_system.efs.dns_name
}

output "aws_security_group_efs_id" {
  description = "Security group ID of the created EFS file system."
  value       = aws_security_group.efs.id
}

output "efs_role_arn" {
  description = "ARN of the IAM role created for the EFS CSI driver."
  value       = aws_iam_role.node_efs_role.arn
}