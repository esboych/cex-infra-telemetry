variable "region" {
  description = "The AWS region where all resources will be created."
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  type        = string
  default     = "my-node-group"
}

variable "key_name" {
  description = "The key name for SSH access to EC2 instances."
  type        = string
  default     = "my-key"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for each subnet in the VPC."
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "desired_size" {
  description = "The desired size of the node group."
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum size of the node group."
  type        = number
  default     = 5
}

variable "min_size" {
  description = "The minimum size of the node group."
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type of the worker nodes."
  type        = string
  default     = "t3.medium"
}

variable "kms_deletion_window_in_days" {
  description = "The number of days to wait before deleting the KMS key."
  type        = number
  default     = 10
}

variable "secrets_policy_name" {
  description = "The name of the IAM policy for accessing AWS Secrets Manager and SSM."
  type        = string
  default     = "secrets-manager-policy"
}