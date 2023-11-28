#---------------------------------------------------------
# Deploy Resource Group
#----------------------------------------------------------
resource "azurerm_resource_group" "rg" {
  count    = var.rg_deploy_condition == "true" ? 1 : 0
  name     = lower(var.rg_name)
  location = var.rg_location
  tags = merge({ "ResourceGroup Tag" = format("%s",var.rg_name)}, var.rg_tags)

}
