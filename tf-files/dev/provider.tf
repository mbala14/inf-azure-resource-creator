# Configure the Azure provider from hashicorp
#Terraform will download this provider from the Terraform Registry.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.39.0"
    }
  }
}

# provider "azurerm" {
#   features {}
# }

provider "azurerm" {
  features {
  }
  resource_provider_registrations = "none"
}
