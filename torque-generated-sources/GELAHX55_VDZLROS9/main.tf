resource "azurerm_windows_virtual_machine" "res-0" {
  admin_username = "localadm"
  location = "westeurope"
  name = "avdtf-2"
  network_interface_ids = [
    "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/avd-resources-rg/providers/Microsoft.Network/networkInterfaces/avdtf-2-nic"
  ]
  resource_group_name = "AVD-RESOURCES-RG"
  size = "Standard_DS2_v2"
  tags = {
    active = ""
  }
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    offer = "Windows-10"
    publisher = "MicrosoftWindowsDesktop"
    sku = "20h2-evd"
    version = "latest"
  }
}