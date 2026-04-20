resource "azurerm_linux_virtual_machine" "res-0" {
  admin_password = "P@ssw0rd1234"
  admin_username = "qualiadmin"
  disable_password_authentication = false
  location = "westeurope"
  name = "vm1"
  network_interface_ids = [
    "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/koko/providers/Microsoft.Network/networkInterfaces/myNetworkInterface"
  ]
  resource_group_name = "KOKO"
  size = "Standard_F2"
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    offer = "UbuntuServer"
    publisher = "Canonical"
    sku = "19.04"
    version = "latest"
  }
}