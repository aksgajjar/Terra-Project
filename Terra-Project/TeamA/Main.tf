provider "azurerm" {
  features {}
}
module "Dev_Ops" {
  source    = "../Modules"

  system    =  "${var.system}"
  saname    =  "${var.saname}"
  location =    "${var.location}"
}
