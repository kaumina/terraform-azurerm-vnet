resource "azurerm_resource_group" "vnet-rg" {
    name     = "vnet-resource-group"
    location = "westus"
}

resource "azurerm_virtual_network" "vnet" {
    name                = "vnet"
    location            = azurerm_resource_group.vnet-rg.location
    resource_group_name = azurerm_resource_group.vnet-rg.name
    address_space       = ["192.168.0.0/16"]

    tags = {
    environment = demo
    }
}

resource "azurerm_subnet" "subnet" {
    name                 = "SubNet"
    resource_group_name  = azurerm_resource_group.vnet-rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["192.168.255.224/27"]
}
