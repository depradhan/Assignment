output "web_app_name" {
  value = azurerm_app_service.example.name
}

output "web_app_default_hostname" {
  value = azurerm_app_service.example.default_site_hostname
}

output "app_service_plan_id" {
  value = azurerm_app_service_plan.example.id
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "location" {
  value = azurerm_resource_group.example.location
}
