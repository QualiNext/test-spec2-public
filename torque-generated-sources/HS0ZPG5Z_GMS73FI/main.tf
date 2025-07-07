resource "azurerm_resource_group" "res-0" {
  location = "westeurope"
  name = "tomerv"
  tags = {
    owner = "tomer.v"
  }
}