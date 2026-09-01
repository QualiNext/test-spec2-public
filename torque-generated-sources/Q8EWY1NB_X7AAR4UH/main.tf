resource "azurerm_public_ip" "res-0" {
  allocation_method = "Static"
  location = "westeurope"
  name = "kubernetes-a33a3fed0e13443ea87cbd3ca0d691db"
  resource_group_name = "mc_aks-rg_qualidev-aks_westeurope"
  sku = "Standard"
  tags = {
    aks-managed-cluster-name = "qualidev-aks"
    aks-managed-cluster-rg = "aks-rg"
    environment = "Dev"
    k8s-azure-cluster-name = "kubernetes"
    k8s-azure-service = "qa-sandboxes/nginx-c8fa2"
    managed_by = "DevOps"
    source = "Terraform"
  }
  zones = [
    "1", 
    "2", 
    "3"
  ]
}