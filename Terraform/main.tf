module "azure_webapp" {
  source             = "./modules/azure_webapp"
  app_name = var.app_name
  resource_group_name = var.resource_group_name
  location = var.location

}

module "sql_server" {
  source             = "./modules/sql_server"
  resource_group_name = module.azure_webapp.resource_group_name
  location = var.location
  sql_server_name = var.sql_server_name
  sql_admin_login = var.sql_admin_login
  sql_admin_password = var.sql_admin_password
  firewall_start_ip = var.firewall_start_ip
  firewall_end_ip = var.firewall_end_ip
  pool_name = var.pool_name
  database_name = var.database_name
  database_edition = var.database_edition
  environment = var.environment

}
