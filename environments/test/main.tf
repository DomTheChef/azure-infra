module "resource_group" {
    source   = "../../modules/resource_groups"
    name     = var.rg_name
    location = var.location
}