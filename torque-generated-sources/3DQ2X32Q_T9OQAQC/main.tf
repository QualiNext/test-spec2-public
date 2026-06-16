resource "azurerm_network_interface" "res-0" {
  enable_accelerated_networking = true
  location = "eastus"
  name = "demo--vm192_z1"
  resource_group_name = "demo-group"
  tags = {
    Environmnet = "infra"
  }
  ip_configuration {
    name = "ipconfig1"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-group/providers/Microsoft.Network/publicIPAddresses/demo--vm-ip"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-group/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet"
  }
}
resource "azurerm_network_interface_security_group_association" "res-1" {
  network_interface_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-group/providers/Microsoft.Network/networkInterfaces/demo--vm192_z1"
  network_security_group_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-group/providers/Microsoft.Network/networkSecurityGroups/demo--vm-nsg"
  depends_on = [
    azurerm_network_interface.res-0
  ]
}