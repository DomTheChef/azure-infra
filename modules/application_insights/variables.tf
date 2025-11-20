variable "name" {
  type        = string
  description = "Name of the Application Insights resource"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name where App Insights exists"
}

variable "workspace_id" {
  description = "The Log Analytics workspace ID for Application Insights"
  type        = string
}
