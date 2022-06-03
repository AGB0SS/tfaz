terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.37.0"
    }
  }
}

provider "azurerm" {
  features {}
}

#provides resource group to contain resources
resource "azurerm_resource_group" "rg" {
  name     = "BOSS-resource"
  location = "westcentralus"
  tags = {
    enviorment = "dev"
    source     = "terraform"
    owner      = "Alexis"
  }
}