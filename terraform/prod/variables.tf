variable "vm_name" {
  type        = string
  description = "The name of the virtual machine to be created"
}

variable "vm_size" {
  type        = string
  description = "The size of the virtual machine to be created"
  default     = "Standard_D2s_v3"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to deploy the virtual machine into"
}

variable "location" {
  type        = string
  description = "The Azure region where the virtual machine will be deployed"
  default     = "eastus"
}

