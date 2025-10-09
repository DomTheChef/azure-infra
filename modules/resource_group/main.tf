resource "azure_rm_resource_group" "this" {
    name     = "dom-web-app-api-test-rg"
    location = "westeurope"
}