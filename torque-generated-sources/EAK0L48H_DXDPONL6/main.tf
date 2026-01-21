resource "azurerm_managed_disk" "res-0" {
  create_option = "FromImage"
  hyper_v_generation = "V2"
  image_reference_id = "/Subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/Providers/Microsoft.Compute/Locations/eastus/Publishers/canonical/ArtifactTypes/VMImage/Offers/ubuntu-24_04-lts/Skus/server/Versions/24.04.202507080"
  location = "eastus"
  name = "demo--vm_OsDisk_1_9509a8a6ad254f658da879a17a8d3a8f"
  os_type = "Linux"
  resource_group_name = "DEMO-GROUP"
  storage_account_type = "Premium_LRS"
  tags = {
    Environmnet = "infra"
  }
  trusted_launch_enabled = true
  zone = "1"
}