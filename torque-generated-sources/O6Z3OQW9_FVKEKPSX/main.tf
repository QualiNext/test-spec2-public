resource "azurerm_public_ip" "res-0" {
  allocation_method = "Dynamic"
  location = "westus2"
  name = "example-public-ip"
  resource_group_name = "power.rego-1681885191-lqne13"
  tags = {
    activity_type = "other"
    torque-account-id = "8be670e4-ad70-4e7b-b76c-024f0ab040c5"
    torque-blueprint-name = "qtorque_autogen_azure_vm_legacy_wi"
    torque-env-case-ignored-id = "gj1dct5kg35sco48gp8y"
    torque-environment-id = "2d6Gj6wfCG3N"
    torque-owner-email = "qa01_automation.com"
    torque-sandbox-name = "azure_vm_legacy_wi-20230419T09204771"
    torque-space-name = "Annotations"
  }
}