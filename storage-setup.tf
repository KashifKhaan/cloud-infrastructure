 # Azure Storage Configuration

 resource "azurerm_storage_account" "main" {
   name                     = "cloudinfrastorage"
   resource_group_name      = "cloud-infrastructure-rg"
   location                 = "East US"
   account_tier             = "Standard"
   account_replication_type = "LRS"
 }

 resource "azurerm_storage_container" "data" {
   name                  = "data"
   storage_account_name  = azurerm_storage_account.main.name
   container_access_type = "private"
 }
