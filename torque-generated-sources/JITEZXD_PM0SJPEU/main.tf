resource "azurerm_public_ip" "res-0" {
  allocation_method = "Static"
  location = "eastus"
  name = "demo-vmPublicIP"
  resource_group_name = "demo-rg"
  sku = "Standard"
  tags = {
    Environment = "Demo"
  }
}