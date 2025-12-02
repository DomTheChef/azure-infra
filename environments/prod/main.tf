module "resource_group_api" {
  source   = "../../modules/resource_group"
  name     = "dom-web-app-API-rg"
  location = var.location
}

module "resource_group_web_app" {
  source   = "../../modules/resource_group"
  name     = "dom-web-app-rg"
  location = var.location
}

module "app_service_plan_api" {
  source              = "../../modules/app_service_plan"
  name                = "ASP-domwebappAPIrg-95f4"
  location            = var.location
  resource_group_name = module.resource_group_api.name
  tier                = "Dynamic"
  size                = "Y1"
}

module "storage_accounts" {
  source              = "../../modules/storage_account"
  name                = "domwebappapirg8ec1"
  location            = var.location
  resource_group_name = module.resource_group_api.name
  replication_type    = "LRS"
  account_tier        = "Standard"
  account_kind        = "StorageV2"
  # consumer_principal_id = module.function_app_api.principal_id
}

module "application_insights" {
  source              = "../../modules/application_insights"
  name                = "dom-prod-fnapp-insights"
  location            = var.location
  resource_group_name = module.resource_group_api.name
  workspace_id        = var.workspace_id

}

module "cosmos_db" {
  source              = "../../modules/cosmos_db"
  name                = "dom-app-cosmos"
  location            = var.location
  resource_group_name = module.resource_group_api.name
  # consumer_principal_id = module.function_app_api.principal_id     
}

module "function_app_api" {
  source                     = "../../modules/function_app"
  name                       = "dom-prod-fnapp"
  location                   = var.location
  resource_group_name        = module.resource_group_api.name
  app_service_plan_id        = module.app_service_plan_api.id
  storage_account_name       = module.storage_accounts.name
  storage_account_access_key = module.storage_accounts.primary_access_key
  app_insights_key           = module.application_insights.key
  cosmos_connection_string   = module.cosmos_db.primary_connection_string
  storage_connection_string  = module.storage_accounts.primary_connection_string
}