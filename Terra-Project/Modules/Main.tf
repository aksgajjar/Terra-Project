 provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = "${var.system}"

  tags = {
    "evn" = "Dev"
  }
}

  resource "azurerm_storage_account" "demo_storage12345678" {
  account_replication_type  = "LRS"
  account_tier             = "Standard"
  location                 = "${var.location}"
  name                     = "${var.saname}"
  resource_group_name      = "${azurerm_resource_group.rg.name}"

}