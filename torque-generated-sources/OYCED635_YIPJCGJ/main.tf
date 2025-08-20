resource "azurerm_network_security_group" "res-0" {
  location = "eastus"
  name = "demo-vmNSG"
  resource_group_name = "demo-group"
}