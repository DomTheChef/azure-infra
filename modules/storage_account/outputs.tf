output "name" {
    value = azurerm_storage_account.this
}

output "id" {
    value = azurerm_storage_account.this
}

output "primary_connection_string" {
  value     = azurerm_storage_account.this.primary_connection_string
  sensitive = true
}
