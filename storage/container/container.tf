#-------------------------------
# Storage Container Creation
#-------------------------------
resource "azurerm_storage_container" "container" {
  count                 = length(var.container_list)
  name                  = lower(var.container_list[count.index].name)
  storage_account_name  = var.container_sa_name
  container_access_type = var.container_list[count.index].access_type
}
