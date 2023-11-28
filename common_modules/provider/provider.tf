# Configure the Microsoft Azure Provider

terraform {
  required_providers {
    azuread = {
     source  = "hashicorp/azuread"
     version = ">= 2.22.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.44.1"
      //version = ">= 3.0.1"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.1.0"
    }
  }
  required_version = ">= 0.13"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

