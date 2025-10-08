variable "subscription_id" {
  description = "Azure subscription ID for this stack"
  type        = string
}

variable "location" {
  description = "Default Azure region"
  type        = string
  default     = "westeurope"
}
