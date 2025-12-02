resource "azurerm_linux_function_app" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.app_service_plan_id

  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  https_only                 = true

  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_stack {
      python_version = "3.11"
    }

    ftps_state = "Disabled"
  }

  app_settings = {
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "python"
    "AzureWebJobsStorage"                      = var.storage_connection_string
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = var.storage_connection_string
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = var.app_insights_key
    "AzureWebJobsFeatureFlags"                 = "EnableWorkerIndexing"
    "STORAGE_ACCOUNT_URL"                      = "https://${var.storage_account_name}.blob.core.windows.net"
    "COSMOS_ENDPOINT"                          = var.cosmos_endpoint
  }

  tags = {
    Project = "ResumeSite"
  }
}