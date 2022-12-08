provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
    name = "dev-rg2"
    location = "eastus"
}
resource "azurerm_public_ip" "example" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}