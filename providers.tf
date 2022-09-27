variable "tenant_id" {
  default = ""
}

variable "subscription_id" {
  default = ""
}

variable "client_id" {
  default = ""
}

variable "client_secret" {
  default = ""
}

terraform {
  /*cloud {
    organization = "philit"

    workspaces {
      name = "gitops-env-demo"
    }
  }*/

  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
