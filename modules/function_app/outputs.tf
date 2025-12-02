output "name" {
  value = azurerm_linux_function_app.this.name
}

output "id" {
  value = azurerm_linux_function_app.this.id
}

output "default_hostname" {
  value = azurerm_linux_function_app.this.default_hostname
}

output "principal_id" {
  value       = azurerm_linux_function_app.this.identity[0].principal_id
  description = "Principal ID of Function App MI"
}

# Adding this to use for cross-cloud work if I get to it
output "tenant_id" {
  value       = azurerm_linux_function_app.this.identity[0].tenant_id
  description = "Tenant ID of the Function AppMI"
}