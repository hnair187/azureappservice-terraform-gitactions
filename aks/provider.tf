provider "azurerm" {
  version = ">=2.40.0"
  skip_provider_registration = true
  # subscription_id = "1d0132e2-e9d5-49e2-b9b6-78fcad301481"
  # client_id = "64bd494c-4169-472b-a9f8-0f9a4f1ceba8"
  # client_secret = "z3L7Q~b~vVrn.ktUibW4X5Aq.rCN1ZZnelwDY"
  # tenant_id = "cce8c5cc-0ed7-4210-9506-52013f2b4e4b"
  features {}
}

/*terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.40.0"
      subscription_id = var.subscription_id
      client_id       = var.client_id
      client_secret   = var.client_secret
      tenant_id       = var.tenant_id
    }
  }
}*/
