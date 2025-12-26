output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vm_subnet_id" {
  value = azurerm_subnet.vm_subnet.id
}

output "bastion_subnet_id" {
  value = azurerm_subnet.bastion_subnet.id
}
output "vm_private_ip" {
  value = azurerm_network_interface.vm_nic.private_ip_address
}

output "bastion_url" {
  value = "https://portal.azure.com/#blade/HubsExtension/BastionHostBlade/resourceId/${azurerm_bastion_host.bastion.id}"
}
