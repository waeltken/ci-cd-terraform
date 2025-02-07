# specify provider, provider source and version
# configure the specified provider
provider "azurerm" {
  use_oidc = true
  features {}
}

# create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
  tags     = local.tags
}

# create a storage account
resource "azurerm_storage_account" "storage" {
  name                     = local.storage_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.storage_tier
  account_replication_type = var.storage_replication_type

  tags = local.tags
}

# create a storage container
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "blob"
}
