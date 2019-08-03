resource "azurerm_virtual_network" "aks_vnet" {
  name                  = "${var.project}-${var.environment}-vnet"
  location              = "${var.location}"
  resource_group_name   = "${var.resouce_group_name}"
  address_space         = "${var.vnet_cidr}"

  tags {
      Environment       = "${var.environment}"
      project           = "${var.project}"
  }
}

resource "azurerm_subnet" "aks_subnet" {
  name                  = "${var.project}-${var.environment}-subnet"
  virtual_network_name  = "${azurerm_virtual_network.aks_vnet.name}"
  resource_group_name   = "${var.resouce_group_name}"
  address_prefix        = "${var.subnet_cidr}"
}

output "vnet_name" {
  value = "${azurerm_virtual_network.aks_vnet.name}"
}

output "subnet_name" {
  value = "${azurerm_subnet.aks_subnet.name}"
}

output "subnet_id" {
  value = "${azurerm_subnet.aks_subnet.subnet_id}"
}

