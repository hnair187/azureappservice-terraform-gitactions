terraform {
  backend "azurerm" {
    resource_group_name  = "azureesourcegroup1"
    storage_account_name = "azurestoragegrouphiral"
    container_name       = "example"
    key                  = "dev.terraform.tfstate"
  }
}