resource "azurerm_public_ip" "res-0" {
  allocation_method = "Static"
  location = "eastus"
  name = "demo--vm-ip"
  resource_group_name = "demo-group"
  sku = "Standard"
  tags = {
    Environmnet = "infra"
  }
  zones = [
    "1"
  ]
}