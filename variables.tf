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

variable "image_name" {
  type        = string
  description = "hcp packer bucket (image name)"
}

variable "image_channel" {
  type        = string
  description = "hcp packer channel"
  default     = "prod"
}

variable "hcp_project" {
  type        = string
  description = "hcp project id"
  default     = "e22399dc-b1ac-477f-b8f7-c5b4c9dfa538"
}