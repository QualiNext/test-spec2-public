resource "azurerm_virtual_network" "res-0" {
  address_space = [
    "10.0.0.0/16"
  ]
  location = "westus2"
  name = "vNet"
  resource_group_name = "vido_rgxcxcbxc"
  tags = {
    activity_type = "other"
    "test New" = "default_val"
    test_old = "unassigned_tag_value"
    torque-account-id = "857ef9bb-16e9-4cbc-80af-de28c240cef5"
    torque-blueprint-name = "bps_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "xjnsop1ojf5rko3ip7iy"
    torque-environment-id = "zEh6PIvEC5oj"
    torque-owner-email = "johnathan.v_quali.com"
    torque-sandbox-name = "azure_vm_legacy_wi-20230525T12125265"
    torque-space-name = "VidoNew"
  }
}