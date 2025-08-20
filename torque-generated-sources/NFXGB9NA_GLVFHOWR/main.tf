resource "azurerm_managed_disk" "res-0" {
  create_option = "FromImage"
  hyper_v_generation = "V1"
  image_reference_id = "/Subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/Providers/Microsoft.Compute/Locations/westus2/Publishers/Canonical/ArtifactTypes/VMImage/Offers/0001-com-ubuntu-server-jammy/Skus/22_04-lts/Versions/22.04.202505210"
  location = "westus2"
  name = "myosdisk1"
  os_type = "Linux"
  resource_group_name = "ANNOTATIONS-1749152748-0D2DWY"
  storage_account_type = "Standard_LRS"
  tags = {
    activity_type = "must-delete"
    torque-account-id = "8be670e4-ad70-4e7b-b76c-024f0ab040c5"
    torque-blueprint-name = "qtorque_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "jimseqj1gizfr6mwq7uo"
    torque-environment-id = "MWd925nRytwg"
    torque-owner-email = "qa01_automation.com"
    torque-sandbox-name = "azure_vm_legacy_wi-20250605T19460309"
    torque-space-name = "Annotations"
  }
}