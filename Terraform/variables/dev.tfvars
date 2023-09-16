resource_group_name = "freelancing-poc"
location            = "East US"
sql_server_name     = "freelancing-sql"
sql_admin_login     = "sqladmin"
sql_admin_password  = "P@ssw0rd12345!" # Replace with your secure password

# Firewall rules:
firewall_start_ip = "0.0.0.0"
firewall_end_ip   = "255.255.255.255"

#Elastic Pool and DB
pool_name              = "freelancing-pool"
database_name          = "freelancing-db"
database_edition       = "Standard"
database_request_units = 100
environment            = "dev"

#WebApp
app_name                = "freelancing-app"