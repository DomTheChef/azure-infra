variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "replication_type" {
  type    = string
  default = "LRS"
}

variable "index_document" {
  type    = string
  default = "index.html"
}

variable "error_404_document" {
  type    = string
  default = "index.html"
}

variable "tags" {
  type    = map(string)
  default = {}
}
