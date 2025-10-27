variable "name" {
    type        = string
    description = "Name of the storage account"
}

variable "location" {
    type        = string
    description = "Azure region for the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group this resource resides in"
}

variable "app_service_plan_id" {
  type        = string
  description = "ID of the App Service Plan for this Function App"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the associated Storage Account"
}

variable "storage_account_access_key" {
  type        = string
  description = "Access key for the associated Storage Account"
}

variable "storage_connection_string" {
  type        = string
  description = "Connection string for the Function App's Storage Account"
}

variable "app_insights_key" {
  type        = string
  description = "Instrumentation key for Application Insights"
  default     = null
}

variable "cosmos_connection_string" {
  type        = string
  description = "CosmosDB connection string used by function app"
}
