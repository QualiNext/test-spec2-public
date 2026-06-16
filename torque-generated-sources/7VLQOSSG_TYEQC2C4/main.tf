resource "azurerm_public_ip" "res-0" {
  allocation_method = "Dynamic"
  location = "westeurope"
  name = "myIPAddress"
  resource_group_name = "koko"
}