output "app_public_ip" {
  value = azurerm_public_ip.app_public_ip.ip_address
}

output "vm_username" {
  value = azurerm_linux_virtual_machine.app_vm.admin_username
}

output "vm_password" {
  value = azurerm_linux_virtual_machine.app_vm.admin_password
}

output "resource_group_name" {
  value = azurerm_resource_group.app_rg.name
}

output "location" {
  value = azurerm_resource_group.app_rg.location
}

