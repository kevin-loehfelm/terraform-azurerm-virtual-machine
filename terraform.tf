terraform {
  required_version = ">1.6.0" # BUSL
  required_providers {
    # tflint-ignore: terraform_required_providers
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}