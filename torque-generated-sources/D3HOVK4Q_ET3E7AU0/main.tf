resource "azurerm_virtual_network" "res-0" {
  address_space = [
    "10.0.0.0/16"
  ]
  location = "westus2"
  name = "vNet"
  resource_group_name = "power.rego-1688475314-br0qh3"
  tags = {
    activity_type = "other"
    torque-account-id = "8be670e4-ad70-4e7b-b76c-024f0ab040c5"
    torque-blueprint-name = "qtorque_autogen_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "gj3zg6mzkjesaiu8pe3y"
    torque-environment-id = "2ssywRQlVgj2"
    torque-owner-email = "qa01_automation.com"
    torque-sandbox-name = "autogen_azure_vm_legacy_wi-20230704T15561925"
    torque-space-name = "Annotations"
  }
}