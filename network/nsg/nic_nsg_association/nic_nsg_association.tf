#--------------------------------------------------------------
# Associate NSG to Subnet
#--------------------------------------------------------------
resource "azurerm_network_interface_security_group_association" "nic_associateion" {
  network_security_group_id = var.nsg_id
  network_interface_id      = var.nsg_nic_id
}
