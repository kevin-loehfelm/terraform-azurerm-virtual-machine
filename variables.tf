variable "name" {
  type        = string
  description = "virtual machine name"
}

variable "vm_size" {
  type        = string
  description = "virtual machine size"
  default     = "Standard_D2s_v3"
}

variable "subnet_id" {
  type        = string
  description = "vnet subnet for virtual machine"
}

variable "location" {
  type        = string
  description = "azure location"
}

variable "resource_group_name" {
  type        = string
  description = "resource group name"
}

variable "tags" {
  type        = map(string)
  description = "custom tags"
}