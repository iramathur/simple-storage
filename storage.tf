resource "random_id" "server" {
  byte_length = 8
}

resource "azurerm_resource_group" "test" {
  name     = "${var.resource_group}-${random_id.server.hex}"
  location = "${var.region}"
}

resource "azurerm_storage_account" "test" {
  name                     = "storacc${random_id.server.hex}"
  resource_group_name      = "${azurerm_resource_group.test.name}"
  location                 = "${var.region}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


