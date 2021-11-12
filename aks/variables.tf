variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}
variable "location" {
  type        = string
  description = "Resources location in Azure"
}
variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
}
variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}
variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}
variable "max_pods" {
  type        = number
  description = "Number of pods on each worker node"
}
variable "node_min_count" {
  type        = number
  description = "Number of minium AKS worker nodes"
}
variable "node_max_count" {
  type        = number
  description = "Number of maximum AKS worker nodes"
}