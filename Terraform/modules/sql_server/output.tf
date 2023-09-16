output "sql_server_name" {
  value = azurerm_sql_server.example.name
}

output "sql_server_fqdn" {
  value = azurerm_sql_server.example.fully_qualified_domain_name
}

output "elastic_pool_name" {
  value = azurerm_sql_elasticpool.example.name
}

output "database_name" {
  value = azurerm_sql_database.example.name
}

output "database_server_name" {
  value = azurerm_sql_database.example.server_name
}
