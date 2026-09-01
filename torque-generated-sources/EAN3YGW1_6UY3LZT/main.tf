resource "azurerm_storage_account" "res-0" {
  account_replication_type = "LRS"
  account_tier = "Standard"
  allow_nested_items_to_be_public = false
  location = "westus"
  name = "cs410032000f7341c61"
  resource_group_name = "cloud-shell-storage-westus"
  tags = {
    ms-resource-usage = "azure-cloud-shell"
  }
}