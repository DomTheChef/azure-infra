resource "app_service_plan_api" "this" {
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

