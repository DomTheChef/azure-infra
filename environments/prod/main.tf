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
