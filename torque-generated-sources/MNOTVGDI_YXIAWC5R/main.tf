resource "azurerm_virtual_network" "res-0" {
  address_space = [
    "10.0.0.0/16"
  ]
  location = "eastus"
  name = "demo-vnet"
  resource_group_name = "demo-rg"
  tags = {
    Environment = "Demo"
    activity_type = "other"
  }
}