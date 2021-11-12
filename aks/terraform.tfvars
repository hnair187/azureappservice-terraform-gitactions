resource_group_name = "terraform-aks1"
location            = "eastus2"
cluster_name        = "aks-terraform1"
kubernetes_version  = "1.19.13"
system_node_count   = 2
max_pods            = 100
node_min_count      = 1
node_max_count      = 4