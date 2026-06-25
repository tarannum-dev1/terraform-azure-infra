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
