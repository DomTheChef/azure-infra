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
  account_kind        = "StorageV1"
}

module "application_insights" {
  source              = "../../modules/application_insights"
  name                = "dom-test-fnapp-insights"
  location            = var.location
  resource_group_name = module.resource_group_api.name
}


