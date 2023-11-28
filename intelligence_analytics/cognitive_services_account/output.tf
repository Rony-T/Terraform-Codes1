#---------------------------------------------------------
# Azure Cognitive Services Account - Output
#----------------------------------------------------------

output "out_cognitive_account_name" {
  description = "Azure Cognitive Services Account Name"
  value       = azurerm_cognitive_account.cognitive_account.name
}

output "out_cognitive_account_id" {
  description = "Azure Cognitive Services Account Name"
  value       = azurerm_cognitive_account.cognitive_account.id
}
