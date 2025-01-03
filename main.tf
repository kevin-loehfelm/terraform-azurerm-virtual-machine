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

# resource: virtual machine
resource "azurerm_windows_virtual_machine" "this" {
  name                              = var.name
  computer_name                     = var.name
  admin_username                    = "azureuser"
  admin_password                    = "P@ssw0rd!"
  location                          = var.location
  resource_group_name               = var.resource_group_name
  network_interface_ids             = [azurerm_network_interface.this.id]
  size                              = var.vm_size
  vm_agent_platform_updates_enabled = true

  os_disk {
    name                 = "${var.name}-os-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }
  tags = merge(
    {
      resourceType = "Viertual Machine"
    },
    var.tags
  )
}
