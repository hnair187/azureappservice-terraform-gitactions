terraform {
  backend "azurerm" {
    resource_group_name  = "Product_Zero_DevOps"
    storage_account_name = "productzerotfstorage"
    container_name       = "sdm-pwc-container"
    key                  = "appservicedev.terraform.tfstate"
    access_key = "Q+xSlbNX5FZFmzfWUeL3ECcKbGgz8W+1DcbBqIGfkLLAdMRZTndSazZ7OPUTwXnXclJbmkCpMGAncOP7ZgWsdQ=="
  }
}
