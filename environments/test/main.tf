module "resource_group_api" {
  source   = "../../modules/resource_group"
  name     = "dom-web-app-API-test-rg"
  location = var.location
}

module "resource_group_web_app" {
  source   = "../../modules/resource_group"
  name     = "dom-web-app-test-rg"
  location = var.location
}

module "app_service_plan_api" {
  source              = "../../modules/app_service_plan"
  name                = "ASP-domwebappAPItestrg-a4a1"
  location            = var.location
  resource_group_name = module.resource_group_api.name
  tier                = "Dynamic"
  size                = "Y1"
}

module "storage_accounts" {
  source              = "../../modules/storage_account"
  name                = "domwebappapitestrga3d8"         
  location            = var.location
  resource_group_name = module.resource_group_api.name
  replication_type    = "LRS"
  account_tier        = "Standard"
  account_kind        = "StorageV2"
}

module "application_insights" {
  source              = "../../modules/application_insights"
  name                = "dom-test-fnapp-insights"
  location            = var.location
  resource_group_name = module.resource_group_api.name
}

module "cosmos_db" {
  source = "../../modules/cosmos_db"
  name                = "dom-app-cosmos-test"                  
  location            = var.location                            
  resource_group_name = module.resource_group_api.name           
}

module "function_app_api" {
  source = "../../modules/function_app"
  name = "dom-test-fnapp"
  location = var.location
  resource_group_name = module.resource_group_api.name
  app_service_plan_id = module.app_service_plan_api.id
  storage_account_name = module.storage_accounts.name
  storage_account_access_key = module.storage_accounts.primary_access_key
  app_insights_key = module.application_insights.key
  cosmos_connection_string = module.cosmos_db.primary_connection_string
  storage_connection_string = module.storage_accounts.primary_connection_string
}