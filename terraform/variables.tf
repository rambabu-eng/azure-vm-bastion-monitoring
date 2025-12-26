variable "location" {
  description = "Azure region"
  type        = string
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-vm-bastion-monitoring"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet-vm-bastion"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = string
  default     = "10.1.0.0/16"
}

variable "vm_subnet_name" {
  description = "Subnet for VM"
  type        = string
  default     = "subnet-vm"
}

variable "vm_subnet_prefix" {
  description = "Address prefix for VM subnet"
  type        = string
  default     = "10.1.1.0/24"
}

variable "bastion_subnet_name" {
  description = "Subnet for Azure Bastion (must be AzureBastionSubnet)"
  type        = string
  default     = "AzureBastionSubnet"
}

variable "bastion_subnet_prefix" {
  description = "Address prefix for Bastion subnet (/27 minimum)"
  type        = string
  default     = "10.1.0.0/27"
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "vm-secure-linux"
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the VM (use terraform.tfvars, do not commit)"
  type        = string
  sensitive   = true
}
