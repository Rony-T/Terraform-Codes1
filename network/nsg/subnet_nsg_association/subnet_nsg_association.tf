#--------------------------------------------------------------
# Associate NSG to Subnet
#--------------------------------------------------------------
resource "azurerm_subnet_network_security_group_association" "subnet_associateion" {
  subnet_id                 = var.nsg_subnet_id
  network_security_group_id = var.nsg_id
}