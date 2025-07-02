resource "azurerm_managed_disk" "res-0" {
  create_option = "FromImage"
  hyper_v_generation = "V1"
  image_reference_id = "/Subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/Providers/Microsoft.Compute/Locations/westus2/Publishers/Canonical/ArtifactTypes/VMImage/Offers/0001-com-ubuntu-server-jammy/Skus/22_04-lts/Versions/22.04.202504250"
  location = "westus2"
  name = "myosdisk1"
  os_type = "Linux"
  resource_group_name = "ENDINGSB-1747424349-JCFY0O"
  storage_account_type = "Standard_LRS"
  tags = {
    activity_type = "must-delete"
    torque-account-id = "8be670e4-ad70-4e7b-b76c-024f0ab040c5"
    torque-blueprint-name = "qtorque_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "pyadr7j3gt8gsiddxyay"
    torque-environment-id = "h02u94NkTcx0"
    torque-owner-email = "qa01_automation.com"
    torque-sandbox-name = "azure_vm_legacy_wi-1747424997"
    torque-space-name = "EndingSB"
  }
}