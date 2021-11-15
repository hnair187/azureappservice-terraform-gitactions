resourcegroupname = "Product_Zero_DevOps"
location           = "East US"
#storagename        = "productzerostorage"
# containername      = "sdm-pwc-container"
appserviceplanname = "sdm-pwcdemoappserviceplan"
kind = "Linux"
reserved = true
appservicename     = "sdm-pwcdemoappservice"
tags = {
  environment = "Dev"
  owner       = "Hiral"
  purpose     = "AzureTfAppServiceDemo"
}
