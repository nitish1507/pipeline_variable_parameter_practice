terraform {
    required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
   }
  

  backend "azurerm" {
    resource_group_name  = "Do-Not-Delete-RG"
    storage_account_name = "donotdeletestorage"
    container_name       = "nitish-container"
    key                  = "preprod.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "preprod_rg" {
  name     = "nitish_preprod_rg"
  location = "central india"
}

resource "azurerm_resource_group" "preprod_rg1" {
  name     = "nitish_preprod_rg1"
  location = "central india"
}

resource "azurerm_resource_group" "preprod_rg2" {
  name     = "nitish_preprod_rg2"
  location = "central india"
}

resource "azurerm_resource_group" "preprod_rg3" {
  name     = "nitish_preprod_rg3"
  location = "central india"
}