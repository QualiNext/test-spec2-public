resource "azurerm_linux_virtual_machine" "res-0" {
  admin_username = "azureuser"
  location = "eastus"
  name = "demo--vm"
  network_interface_ids = [
    "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/demo-group/providers/Microsoft.Network/networkInterfaces/demo--vm192_z1"
  ]
  resource_group_name = "DEMO-GROUP"
  secure_boot_enabled = true
  size = "Standard_D2ls_v5"
  tags = {
    Environmnet = "infra"
  }
  vtpm_enabled = true
  zone = "1"
  additional_capabilities {

  }
  admin_ssh_key {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBvQ4ZnuAJJxpTLFmxWnaEckgPh9c6mPQTIlJzwKJbVD5c7pX3v+eSpMHjfjRhW3FghJBQCkl9SEuPtIUnpRQQlFNfWihfIxOKQK32zpUsXfKz7C3Q0qzIXL4/q8foEchwtMj+VAagWLZnH1s9YVRLmRqKcfif97v2laDI+OnMXHFpig4xkBfWIQATYIA60ao/kuJtic+nm5OKSOTwsEpdNVCZxuomd9EfJqDU+Rjb3dlaTbFzrGMrKl/e3Xk8JKBsSCelJJGFIjpe7ky/0zQDhsFO9oHcMT7VqbOsE8ahjwyF1EBQiCm/lTFgtoNsOi23P/GhXlfqyWeJWcSlgJwPT6owBlOHvp+16c28t1tiMl4LaM/1+WuG8a7+F08TPC8CWUK1lkaplTmBfVejzOQJVJJ+l7K7gJRUlC2ETc7ptqFXBd2QqzDIDozNZwbfBLejD3aGsrXRUNArIP7lLCQAgZi8+y1+GCDaGeSFsHu85hyOTxl7OfNTT0BWqwSlfyE= generated-by-azure"
    username = "azureuser"
  }
  boot_diagnostics {

  }
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }
  source_image_reference {
    offer = "ubuntu-24_04-lts"
    publisher = "canonical"
    sku = "server"
    version = "latest"
  }
}