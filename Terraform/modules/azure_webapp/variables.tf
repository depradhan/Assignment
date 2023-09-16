variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "app_name" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}
