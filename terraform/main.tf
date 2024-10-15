terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.72.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ws-devops"
    storage_account_name = "devopshackathontfstate"
    container_name       = "tfstate"
    key                  = "bakicp4362435345.tfstate"
  }
}

provider "azurerm" {
  features {}
}

#Get resource group
data "azurerm_resource_group" "wsdevops" {
  name = var.rg_name
}
