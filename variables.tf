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
#################################################
# Subnet
#################################################

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefix for the subnet."
  type        = list(string)
}
#################################################
# Network Security Group
#################################################

variable "nsg_name" {
  description = "Name of the Network Security Group."
  type        = string
}
#################################################
# Public IP
#################################################

variable "public_ip_name" {
  description = "Name of the Public IP."
  type        = string
}
#################################################
# Network Interface
#################################################

variable "nic_name" {
  description = "Name of the Network Interface."
  type        = string
}
#################################################
# Linux Virtual Machine
#################################################

variable "vm_name" {
  description = "Name of the Linux Virtual Machine."
  type        = string
}

variable "vm_size" {
  description = "Azure VM Size."
  type        = string
}

variable "admin_username" {
  description = "Administrator username."
  type        = string
}
variable "public_key_path" {
  description = "Path to the SSH public key."
  type        = string
}
