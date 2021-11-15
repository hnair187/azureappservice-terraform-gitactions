/*output "resourcegroupid" {
  value = azurerm_resource_group.resource1.id
}

output "resourcegroupname" {
  value = azurerm_resource_group.resource1.name
}

output "storageaccount" {
  value = azurerm_storage_account.storage.name
}

output "container" {
  value = azurerm_storage_container.storagecontainer.name
}*/

output "appserviceplan" {
  value = azurerm_app_service_plan.appserviceplandemo1.id
}

output "appservice" {
  value = azurerm_app_service.appservicedemo1.id
}