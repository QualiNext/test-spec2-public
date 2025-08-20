resource "azurerm_resource_group" "res-0" {
  location = "westus2"
  name = "rg_test2111"
  tags = {
    activity_type = "other"
    torque-account-id = "71b44ef8-f9e2-4aaa-b05c-07797ce71cba"
    torque-blueprint-name = "test-spec2-public___runner_mgmt__0f2b598268-azure-vm"
    torque-env-case-ignored-id = "cjnw16j1epf8qht3xfty"
    torque-environment-id = "bEIy2CJwr9yb"
    torque-owner-email = "yakir.l_quali.com"
    torque-sandbox-name = "runner_mgmt__0f2b598268-azure-vm-20240110T00045896"
    torque-space-name = "Test"
  }
}