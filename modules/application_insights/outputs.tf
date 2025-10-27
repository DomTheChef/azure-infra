output "id" {
  value = azurerm_application_insights.this.id
}

output "key" {
  value     = azurerm_application_insights.this.instrumentation_key
  sensitive = true
}
