resource "azurerm_resource_group" "resource_group" {
  name     = "cst8918lab9"
  location = "Canada Central"
}

resource "azurerm_storage_account" "storageacct" {
  name                     = "storageaccountjoe"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
