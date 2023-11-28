#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# Associate NSG to Network Interface 
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

resource "azurerm_network_interface_security_group_association" "nic_associateion" {
  network_interface_id      = var.vm_nic_id
  network_security_group_id = var.vm_nsg_id
}