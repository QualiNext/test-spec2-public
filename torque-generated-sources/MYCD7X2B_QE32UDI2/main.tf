resource "azurerm_network_interface" "res-0" {
  location = "westus2"
  name = "example-nic"
  resource_group_name = "azure_vm_legacy_wi-1724003183-crm7ne"
  tags = {
    activity_type = "must-delete"
    torque-account-id = "bb07c0be-8e6a-4cf1-84d6-5bbf906bd3e7"
    torque-blueprint-name = "qtorque_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "eiig47kmetasntkmkimo"
    torque-environment-id = "EjmuKDqaEKUW"
    torque-owner-email = "qa-auto_1724003183-crm7ne.com"
    torque-sandbox-name = "azure_vm_legacy_wi-1724003284"
    torque-space-name = "QA-auto-space-1724003183"
  }
  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/azure_vm_legacy_wi-1724003183-crm7ne/providers/Microsoft.Network/publicIPAddresses/example-public-ip"
    subnet_id = "/subscriptions/24aae708-4612-497c-a91e-7ec5c657f9db/resourceGroups/azure_vm_legacy_wi-1724003183-crm7ne/providers/Microsoft.Network/virtualNetworks/vNet/subnets/internal"
  }
}