variable "name" {
  type        = string
  description = "Name of the Cosmos DB resource"
}

variable "location" {
  type        = string
  description = "Azure region for the Cosmos DB"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "consumer_principal_id" {
  type        = string
  description = "Principal ID allowed to access this Cosmos DB account"
  default     = null
}