resource "azurerm_network_interface" "res-0" {
  location = "westus2"
  name = "example-nic"
  resource_group_name = "shirarg"
  tags = {
    AppId = "something"
    "Hello World" = "blahhhhhhh"
    Name = "torque"
    Test2 = "unassigned_tag_value"
    activity_type = "other"
    "my Test" = "unassigned_tag"
    test1 = "test1value"
    torque-account-id = "ad880aff-e8af-4854-a307-d86238e8b22e"
    torque-blueprint-name = "bps_azure_vm_legacy_wi-instructions"
    torque-env-case-ignored-id = "j3gzq74oxfrwq4u8pt1y"
    torque-environment-id = "NMwwPyIGjgld"
    torque-owner-email = "shira.b_quali.com"
    torque-sandbox-name = "azure_vm_legacy_wi-instructions-20230621T16474879"
    torque-space-name = "Vido"
  }
  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/shirarg/providers/Microsoft.Network/publicIPAddresses/example-public-ip"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/shirarg/providers/Microsoft.Network/virtualNetworks/vNet/subnets/internal"
  }
}