terraform {
  backend "azurerm" {
    storage_account_name = "tfstateclwaltkeout"
    container_name       = "tfstate"
    resource_group_name  = "default"
    key                  = "ci-cd-terraform.tfstate"
    use_oidc             = true
  }
}
