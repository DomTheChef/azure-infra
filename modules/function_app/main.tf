resource "azurerm_linux_function_app" "this" {
    name                     = var.name
    location                 = var.location
    resource_group_name      = var.resource_group_name
    service_plan_id          = var.app_service_plan_id

    storage_account_name = var.storage_account_name
    storage_account_access_key = var.storage_account_access_key
    https_only = true

  identity {
    type         = "UserAssigned"
    identity_ids = [var.identity_id]
  }

site_config {
  ftps_state          = "Disabled"       
  minimum_tls_version = "1.2"               
}
  app_settings = {
    "FUNCTIONS_EXTENSION_VERSION" = "~4"
    "FUNCTIONS_WORKER_RUNTIME"    = "python"      
    "AzureWebJobsStorage"         = var.storage_connection_string
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = var.storage_connection_string
    "WEBSITE_CONTENTSHARE"        = "${var.name}-content"

    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.app_insights_key

    "CosmosConn" = var.cosmos_connection_string   

    "AzureWebJobsFeatureFlags" = "EnableWorkerIndexing"
  }
  
    tags = {
        Project = "ResumeSite"         
  }
}
