resource "azurerm_network_interface" "res-0" {
  location = "westus2"
  name = "example-nic"
  resource_group_name = "vido_rg80xvxsv"
  tags = {
    "Test Me" = "Test_Me"
    activity_type = "other"
    talin-test_blueprint = "unassigned_tag_value"
    test = "unassigned_tag_value"
    torque-account-id = "482a7cf6-8f5e-448d-a78b-10e918a1aec9"
    torque-blueprint-name = "bps_two_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "etdfk1mngbrghh1wepjo"
    torque-environment-id = "DFUIb0HnrTCS"
    torque-owner-email = "johnathan.v_quali.com"
    torque-sandbox-name = "two_azure_vm_legacy_wi-20250521T16352801"
    torque-space-name = "Vido"
  }
  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/vido_rg80xvxsv/providers/Microsoft.Network/publicIPAddresses/example-public-ip"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/vido_rg80xvxsv/providers/Microsoft.Network/virtualNetworks/vNet/subnets/internal"
  }
}