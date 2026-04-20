resource "azurerm_network_security_group" "res-0" {
  location = "eastus2"
  name = "basicNsgvmss-vido_group-vnet-nic01"
  resource_group_name = "vmss-vido_group"
}