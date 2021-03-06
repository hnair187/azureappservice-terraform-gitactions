/*resource "azurerm_resource_group" "resource1" {
  name     = var.resourcegroupname
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storagename
  resource_group_name      = azurerm_resource_group.resource1.name
  location                 = azurerm_resource_group.resource1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = var.tags
}

resource "azurerm_storage_container" "storagecontainer" {
  name                  = var.containername
  storage_account_name  = var.storagename
  container_access_type = "private"
}
*/
resource "azurerm_app_service_plan" "appserviceplandemo1" {
  name                = var.appserviceplanname
  location            = var.location
  resource_group_name = var.resourcegroupname
  kind                = var.kind
  reserved            = var.reserved

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "appservicedemo1" {
  name                = var.appservicename
  location            = var.location
  resource_group_name = var.resourcegroupname
  app_service_plan_id = azurerm_app_service_plan.appserviceplandemo1.id

  site_config {
    java_version = "11"
    scm_type     = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}

