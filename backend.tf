terraform {
  backend "azurerm" {
    resource_group_name   = "test-ayodeji-rg"
    storage_account_name  = "examplestoraccayodejiola"
    container_name        = "terraform-state"
    key                   = "terraform.tfstate"
  }
}
