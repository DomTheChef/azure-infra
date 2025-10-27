terraform {
  backend "azurerm" {
    resource_group_name  = "dom-tfstate-rg"
    storage_account_name = "domtfstate"
    container_name       = "tfstate"
    key                  = "test.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
