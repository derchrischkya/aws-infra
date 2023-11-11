// EFSSecurityGroup is the security group for the EFS mount targets
resource "aws_security_group" "efs" {
  name        = "efs"
  description = "Allow traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "nfs"
    from_port   = 2049
    to_port     = 2049
    protocol    = "TCP"
    cidr_blocks = var.vpc_cidr_block
  }
}

// EFSNodePolicy is the IAM policy for EFS nodes
resource "aws_iam_policy" "node_efs_policy" {
  name        = "eks_node_efs_policy"
  path        = "/"
  description = "Policy for EFKS nodes to use EFS"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "elasticfilesystem:DescribeAccessPoints",
          "elasticfilesystem:DescribeFileSystems",
          "elasticfilesystem:DescribeMountTargets",
          "ec2:DescribeAvailabilityZones"
        ],
        "Resource" : "*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "elasticfilesystem:CreateAccessPoint"
        ],
        "Resource" : "*",
        "Condition" : {
          "StringLike" : {
            "aws:RequestTag/efs.csi.aws.com/cluster" : "true"
          }
        }
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "elasticfilesystem:TagResource"
        ],
        "Resource" : "*",
        "Condition" : {
          "StringLike" : {
            "aws:ResourceTag/efs.csi.aws.com/cluster" : "true"
          }
        }
      },
      {
        "Effect" : "Allow",
        "Action" : "elasticfilesystem:DeleteAccessPoint",
        "Resource" : "*",
        "Condition" : {
          "StringEquals" : {
            "aws:ResourceTag/efs.csi.aws.com/cluster" : "true"
          }
        }
      },
      {
        "Effect" : "Allow",
        "Action" : "sts:AssumeRole",
        "Resource" : "*",
        "Condition" : {
          "StringEquals" : {
            "aws:ResourceTag/efs.csi.aws.com/cluster" : "true"
          }
        }
      }
    ]
    }
  )
}

resource "aws_iam_role" "node_efs_role" {
  name = "AmazonEKS_EFS_CSI_Driver_Policy"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = "${var.oidc_provider_arn}"
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringLike = {
            "${var.oicd_provider}:aud"  = "sts.amazonaws.com"
            "${var.oicd_provider}:sub" = "system:serviceaccount:kube-system:efs-csi-*"
          }
        }
      }
    ]
    }
  )
}



#attache role policies
resource "aws_iam_role_policy_attachment" "my_role_policy_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEFSCSIDriverPolicy" # Update with your desired policy
  role       = aws_iam_role.node_efs_role.name
}

// EFSFileSystem is the EFS file system
resource "aws_efs_file_system" "efs" {
  creation_token   = var.efs_creation_token
  performance_mode = var.efs_performance_mode
  throughput_mode  = var.efs_throughput_mode
  encrypted        = var.efs_encrypted
  tags             = var.efs_tags
}


resource "aws_efs_mount_target" "efs_mount_targets" {
  count           = 3
  file_system_id  = aws_efs_file_system.efs.id
  subnet_id       = var.private_subnets[count.index]
  security_groups = [aws_security_group.efs.id]
}
