# Azure provider version
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0, < 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "random" {}

terraform {
  backend "azurerm" {
    resource_group_name   = "tf-stage-azure-open-ai"
    storage_account_name  = "terraformstateopen2024ai"
    container_name        = "tf-stage-azure-open-ai"
    key                   = "terraform.tfstate"
  }
}