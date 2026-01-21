resource "azurerm_network_interface" "res-0" {
  enable_ip_forwarding = true
  location = "eastus"
  name = "yakirnetwork"
  resource_group_name = "terrorm-import-test"
  tags = {
    key1 = "val1"
  }
  ip_configuration {
    name = "Ipv4config"
    private_ip_address_allocation = "Dynamic"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/terrorm-import-test/providers/Microsoft.Network/virtualNetworks/vnet-eastus/subnets/snet-eastus-1"
  }
  ip_configuration {
    name = "newip"
    private_ip_address_allocation = "Dynamic"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/terrorm-import-test/providers/Microsoft.Network/virtualNetworks/vnet-eastus/subnets/snet-eastus-1"
  }
}