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
  
}