resource "azurerm_storage_account" "storage" {
  name                     = var.storagename
  resource_group_name      = var.resourcegroupname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = var.tags
}

resource "azurerm_storage_container" "storagecontainer" {
  name                  = var.containername
  storage_account_name  = var.storagename
  # container_access_type = "blob"
}


