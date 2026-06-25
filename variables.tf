#################################################
# Azure Location
#################################################

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "Central India"
}

#################################################
# Resource Group
#################################################

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "rg-contoso-dev-001"
}
