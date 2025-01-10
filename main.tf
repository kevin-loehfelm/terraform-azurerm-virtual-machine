# resource: network interface
resource "azurerm_network_interface" "this" {
  name                = "${var.name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "ipconfig"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnet_id
  }
  tags = merge(
    {
      resourceType = "Network Interface Card"
    },
    var.tags
  )
}

resource "azurerm_virtual_machine" "this" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  network_interface_ids         = [azurerm_network_interface.this.id]
  vm_size                       = var.vm_size
  delete_os_disk_on_termination = true
  tags = merge(
    {
      resourceType = "Virtual Machine"
    },
    var.tags
  )

  storage_os_disk {
    name              = "${var.name}-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    id = var.vm_image_id
  }

  os_profile {
    computer_name  = var.name
    admin_username = "opsadmin"
    admin_password = "Password1234!"
  }

  os_profile_windows_config {}

  lifecycle {
    create_before_destroy = false
  }
}