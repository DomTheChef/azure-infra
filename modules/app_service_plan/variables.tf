variable "name" {
  type        = string
  description = "Name of the app service plan"
}

variable "location" {
  type        = string
  description = "Azure region for the app service plan"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group this resource resides in"
}

variable "tier" {
  type        = string
  description = "App Service Plan pricing tier"
}

variable "size" {
  type        = string
  description = "App Service Plan size"
}