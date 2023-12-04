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
