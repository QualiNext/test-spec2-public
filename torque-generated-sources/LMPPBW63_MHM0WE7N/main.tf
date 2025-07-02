resource "azurerm_public_ip" "res-0" {
  allocation_method = "Dynamic"
  location = "westus2"
  name = "example-public-ip"
  resource_group_name = "EndingSB-1736630440-hh8odj"
  tags = {
    activity_type = "must-delete"
    torque-account-id = "8be670e4-ad70-4e7b-b76c-024f0ab040c5"
    torque-blueprint-name = "qtorque_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "ep8gnakqke3fqimspy4o"
    torque-environment-id = "CNaaNR2WUvh5"
    torque-owner-email = "qa01_automation.com"
    torque-sandbox-name = "azure_vm_legacy_wi-1736630878"
    torque-space-name = "EndingSB"
  }
}