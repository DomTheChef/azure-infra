module "resource_group" {
    source   = "../../modules/resource_group"
    name     = var.rg_name
    location = var.location
}