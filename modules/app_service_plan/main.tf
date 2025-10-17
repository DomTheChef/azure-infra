resource "azurerm_app_service_plan" "this" {
    name                = var.name
    location            = var.location
    resource_group_name = module.resource_group_api.name
    sku {
        tier = var.tier
        size = var.size
    }

    tags = {
        Project = "ResumeSite"         
  }
}

