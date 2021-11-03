resource "azurerm_resource_group" "resource1" {
  name = "testResource1"
  location = "Central US"
  tags = {
    "environment" = "dev"
  }
}