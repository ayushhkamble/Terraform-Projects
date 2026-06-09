variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "node_group_name" {
  description = "EKS Node Group Name"
  type        = string
}

variable "node_role_arn" {
  description = "EKS Node IAM Role ARN"
  type        = string
}

variable "subnet_ids" {
  description = "Private Subnet IDs for Node Group"
  type        = list(string)
}

variable "instance_types" {
  description = "Node Group Instance Types"
  type        = list(string)
}

variable "node_desired_size" {
  description = "Desired Node Count"
  type        = number
}

variable "node_min_size" {
  description = "Minimum Node Count"
  type        = number
}

variable "node_max_size" {
  description = "Maximum Node Count"
  type        = number
}