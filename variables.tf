#################################################
# Azure Location
#################################################

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

#################################################
# Resource Group
#################################################

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}
#################################################
# Virtual Network
#################################################

variable "vnet_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network."
  type        = list(string)
}
