resource "azurerm_managed_disk" "res-0" {
  create_option = "FromImage"
  hyper_v_generation = "V1"
  image_reference_id = "/Subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/Providers/Microsoft.Compute/Locations/westeurope/Publishers/Canonical/ArtifactTypes/VMImage/Offers/UbuntuServer/Skus/19.04/Versions/19.04.201908140"
  location = "westeurope"
  name = "vm1_OsDisk_1_177753001fdd43eba196c8ecee6ab55e"
  os_type = "Linux"
  resource_group_name = "KOKO"
  storage_account_type = "Standard_LRS"
}