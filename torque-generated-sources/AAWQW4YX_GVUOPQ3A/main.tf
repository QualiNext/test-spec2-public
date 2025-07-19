resource "azurerm_user_assigned_identity" "res-0" {
  location = "westeurope"
  name = "test-reader-identity"
  resource_group_name = "colony-zwi3otg4mddm872"
}