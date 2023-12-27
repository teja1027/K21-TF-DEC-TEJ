resource "azurerm_resource_group" "rg-local-name" {
    name = "TestRG"
    location = "eastus2"
    
}

resource "azurerm_virtual_network" "vnet" {
  name = "test-vnet"
  resource_group_name = azurerm_resource_group.rg-local-name.name
  location = azurerm_resource_group.rg-local-name.location
   address_space       = ["10.0.0.0/16"]
}