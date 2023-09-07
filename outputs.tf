output "vnet" {
  value = azurerm_virtual_network.vnet.name
}
output "ipblock" {
  value = azurerm_virtual_network.vnet.subnet
}
output "resource_group_name" {
  value = azurerm_virtual_network.vnet.resource_group_name
}