output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}

output "eks_node_role_arn" {
  value = aws_iam_role.eks_node_role.arn
}

output "eks_cluster_policy_attachment" {
  value = aws_iam_role_policy_attachment.eks_cluster_policy.id
}

output "worker_node_policy_attachment" {
  value = aws_iam_role_policy_attachment.worker_node_policy.id
}

output "cni_policy_attachment" {
  value = aws_iam_role_policy_attachment.cni_policy.id
}

output "ecr_policy_attachment" {
  value = aws_iam_role_policy_attachment.ecr_policy.id
}