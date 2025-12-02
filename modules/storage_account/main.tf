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

resource "azurerm_role_assignment" "consumer_blob_contributor" {
  count                = var.consumer_principal_id == null ? 0 : 1
  scope                = azurerm_storage_account.this.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.consumer_principal_id
}