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

variable "account_tier" {
  type        = string
  description = "Storage account tier"
}

variable "replication_type" {
  type        = string
  description = "Storage account replication type"
}

variable "account_kind" {
    type = string
    description = "Type of account (e.g. StorageV1 or V2)"
}