resource "azurerm_resource_group" "this" {
    name     = "dom-web-app-API-test-rg"
    location = "westeurope"

    tags = {
        Project = "ResumeSite"         
  }
}