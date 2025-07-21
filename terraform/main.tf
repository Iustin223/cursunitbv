locals {
  prefix = "cursUNITBV"
}




#variable "client_secret" {
#  type = string
#  sensitive = true
#}
#
#variable "client_id" {
#  type = string
#  sensitive = true
#}
#
#variable "tenant_id" {
#  type = string
#  sensitive = true
#}
#
#variable "subscription_id" {
#  type = string
#  sensitive = true
#}


provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}

  #client_id       = var.client_id
  #client_secret   = var.client_secret
  #tenant_id       = var.tenant_id
  #subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = "${local.prefix}-rg"
  location = "West Europe"
}