output "out_container_name" {
  description = "Storage container name"
  value       =  { for mnh in azurerm_storage_container.container : mnh.name => mnh.id }
}
