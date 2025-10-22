resource "azurerm_storage_account" "this" {
    name                     = var.name
    location                 = var.location
    resource_group_name      = var.resource_group_name
    account_kind             = var.account_kind
    account_tier             = var.account_tier
    account_replication_type = var.replication_type

    tags = {
        Project = "ResumeSite"         
  }
}
