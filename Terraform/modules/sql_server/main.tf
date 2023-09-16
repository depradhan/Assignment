# resource "azurerm_resource_group" "example" {
#   name     = var.resource_group_name
#   location = var.location
# }

resource "azurerm_sql_server" "example" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_sql_firewall_rule" "example" {
  name                = "example-firewall"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.example.name
  start_ip_address    = var.firewall_start_ip
  end_ip_address      = var.firewall_end_ip
}

resource "azurerm_sql_elasticpool" "example" {
  name                = var.pool_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.example.name
  dtu                 = 100 # Change to your desired DTU (Database Transaction Unit) configuration
  edition = var.database_edition
  location = var.location
}

resource "azurerm_sql_database" "example" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.example.name
  edition             = var.database_edition
  collation           = "SQL_Latin1_General_CP1_CI_AS" # Change to your desired collation
  location = var.location
  tags = {
    environment = var.environment
  }
}
