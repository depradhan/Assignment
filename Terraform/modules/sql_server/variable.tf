variable "resource_group_name" {
  description = "The name of the Azure resource group."
}

variable "location" {
  description = "The Azure region where the resources will be created."
  default     = "East US" # Change to your desired region
}

variable "sql_server_name" {
  description = "The name of the Azure SQL logical server."
}

variable "sql_admin_login" {
  description = "The SQL Server administrator login name."
}

variable "sql_admin_password" {
  description = "The SQL Server administrator login password."
}

variable "firewall_start_ip" {
  description = "The start IP address for the SQL Server firewall rule."
  default     = "0.0.0.0" # You may want to limit this in a production environment
}

variable "firewall_end_ip" {
  description = "The end IP address for the SQL Server firewall rule."
  default     = "255.255.255.255" # You may want to limit this in a production environment
}

variable "pool_name" {
  description = "The name of the Azure SQL Elastic Pool."
}

variable "database_name" {
  description = "The name of the database to create."
}

variable "database_edition" {
  description = "The edition of the database (e.g., 'Standard')."
  default     = "Standard" # Change to your desired edition
}

variable "database_request_units" {
  description = "The number of request units for the database."
  default     = 100 # Change to your desired value
}

variable "environment" {
  description = "Name of the environment"
}