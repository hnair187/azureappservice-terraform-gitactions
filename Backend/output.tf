output "resourcegroupname" {
  value = var.resourcegroupname
}

output "storageaccount" {
  value = var.storagename
}

output "container" {
  value = azurerm_storage_container.storagecontainer.name
}

