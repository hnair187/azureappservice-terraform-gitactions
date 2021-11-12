module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = var.resource_group_name
  address_space       = "10.0.0.0/16"
  subnet_prefixes     = ["10.0.1.0/24"]
  subnet_names        = ["akssubnet1"]
  depends_on          = [azurerm_resource_group.aks-rg]
}

module "aks" {
  source                           = "Azure/aks/azurerm"
  resource_group_name              = azurerm_resource_group.aksrg.name
#   client_id                        = "your-service-principal-client-appid"
#   client_secret                    = "your-service-principal-client-password"
  kubernetes_version               = var.kubernetes_version
  orchestrator_version             = var.kubernetes_version
  prefix                           = "prefix"
  cluster_name                     = var.cluster_name
  network_plugin                   = "kubenet"
  vnet_subnet_id                   = module.network.vnet_subnets[0]
#  os_disk_size_gb                  = 50
  sku_tier                         = "Free" # defaults to Free
#   enable_role_based_access_control = true
#   rbac_aad_admin_group_object_ids  = [data.azuread_group.aks_cluster_admins.id]
#   rbac_aad_managed                 = true
#   private_cluster_enabled          = true # default value
  enable_http_application_routing  = true
  enable_azure_policy              = true
  enable_auto_scaling              = true
  enable_host_encryption           = true
  agents_min_count                 = var.node_min_count
  agents_max_count                 = var.node_max_count
  agents_count                     = var.system_node_count # Please set `agents_count` `null` while `enable_auto_scaling` is `true` to avoid possible `agents_count` changes.
  agents_max_pods                  = var.max_pods
  agents_pool_name                 = "sdm-nodepool" #3nodepools 
  agents_availability_zones        = ["1", "2", "3"]
  agents_type                      = "VirtualMachineScaleSets"

  agents_labels = {
    "nodepool" : "defaultnodepool"
  }

  agents_tags = {
    "Agent" : "defaultnodepoolagent"
  }

  network_policy                 = "azure"
  net_profile_dns_service_ip     = "10.0.0.10"
  net_profile_docker_bridge_cidr = "170.10.0.1/16"
  net_profile_service_cidr       = "10.0.0.0/16"

  depends_on = [module.network]
}