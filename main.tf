#################################################
# Resource Group
#################################################

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
#################################################
# Virtual Network
#################################################

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space
}
#################################################
# Subnet
#################################################

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}
#################################################
# Network Security Group
#################################################

resource "azurerm_network_security_group" "web_nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}
#################################################
# Associate NSG with Subnet
#################################################

resource "azurerm_subnet_network_security_group_association" "web_nsg_association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.web_nsg.id
}
