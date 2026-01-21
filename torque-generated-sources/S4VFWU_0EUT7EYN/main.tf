resource "azurerm_network_interface" "res-0" {
  location = "eastus"
  name = "demo-vmVMNic"
  resource_group_name = "demo-rg"
  tags = {
    Environment = "Demo"
  }
  ip_configuration {
    name = "ipconfigdemo-vm"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-rg/providers/Microsoft.Network/publicIPAddresses/demo-vmPublicIP"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet"
  }
}
resource "azurerm_network_interface_security_group_association" "res-1" {
  network_interface_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-rg/providers/Microsoft.Network/networkInterfaces/demo-vmVMNic"
  network_security_group_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-rg/providers/Microsoft.Network/networkSecurityGroups/demo-vmNSG"
  depends_on = [
    azurerm_network_interface.res-0
  ]
}