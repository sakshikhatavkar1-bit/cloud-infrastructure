terraform {
  required_version = ">= 1.4.0"

  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "~> 3.90"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.23"
    }

    random = {
      source  = "random"
      version = "~> 3.6"
    }
  }

  backend "azurerm" {}
}

# Providers

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

provider "cloudflare" {}

# Modules

module "core" {
  source = "./core"

  location     = var.location
  aks_location = var.aks_location
  tags         = var.tags

  cloudflare_account_id = var.cloudflare_account_id
}
