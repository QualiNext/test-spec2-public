resource "azurerm_network_interface" "res-0" {
  location = "westus2"
  name = "example-nic"
  resource_group_name = "EndingSB-1720727183-ygptlu"
  tags = {
    activity_type = "must-delete"
    torque-account-id = "8be670e4-ad70-4e7b-b76c-024f0ab040c5"
    torque-blueprint-name = "qtorque_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "jb4wwibakiugqid4ga4y"
    torque-environment-id = "HuJT8UfgTz64"
    torque-owner-email = "qa01_automation.com"
    torque-sandbox-name = "azure_vm_legacy_wi-1720727510"
    torque-space-name = "EndingSB"
  }
  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/EndingSB-1720727183-ygptlu/providers/Microsoft.Network/publicIPAddresses/example-public-ip"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/EndingSB-1720727183-ygptlu/providers/Microsoft.Network/virtualNetworks/vNet/subnets/internal"
  }
}