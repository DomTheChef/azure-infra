resource "azurerm_cosmosdb_account" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }

  capabilities {
    name = "EnableServerless"
  }

  tags = {
    Project = "ResumeSite"
  }
}

resource "azurerm_role_assignment" "consumer_cosmos_contributor" {
  count                = var.consumer_principal_id == null ? 0 : 1
  scope                = azurerm_cosmosdb_account.this.id
  role_definition_name = "Cosmos DB Built-in Data Contributor"
  principal_id         = var.consumer_principal_id
}