#---------------------------------------------------------
# Synapse Azure Integration Runtime
#----------------------------------------------------------

resource "azurerm_synapse_integration_runtime_azure" "sy_integration_runtime" {
  name                 = format(lower(replace("${var.ir_name}-auto", "/[[:^alnum:]]/", "")))
  synapse_workspace_id = data.azurerm_synapse_workspace.synapse_info.id
  location             = data.azurerm_synapse_workspace.synapse_info.location
    lifecycle {
    ignore_changes = [
      tags,
      value,
    ]
  }
}
