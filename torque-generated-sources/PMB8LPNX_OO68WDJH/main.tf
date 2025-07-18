resource "azurerm_storage_account" "res-0" {
  account_replication_type = "LRS"
  account_tier = "Standard"
  allow_nested_items_to_be_public = false
  cross_tenant_replication_enabled = false
  location = "eastus"
  min_tls_version = "TLS1_0"
  name = "demostorage9992"
  resource_group_name = "demo-group"
  tags = {
    Environmnet = "infra"
  }
}