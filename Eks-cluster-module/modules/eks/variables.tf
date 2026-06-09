variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes Version"
  type        = string
}

variable "cluster_role_arn" {
  description = "EKS Cluster IAM Role ARN"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EKS Cluster"
  type        = list(string)
}