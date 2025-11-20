variable "location" {
  type        = string
  description = "Azure region"
}

variable "subscription_id" {
  type = string
  description = "Azure subscription ID"
}

variable "workspace_id" {
  description = "The Log Analytics workspace ID for Application Insights"
  type        = string
}
