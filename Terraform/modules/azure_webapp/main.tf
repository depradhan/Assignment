resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.app_name}-plan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "example" {
  name                = var.app_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    always_on        = true
    app_command_line = ""
    default_documents = ["index.html"]
    
    # Enable static website hosting
    cors {
      allowed_origins     = ["*"]
      support_credentials = false
    }

  }

  # Set the container type to "StaticSite"
  tags = {
    container_type = "StaticSite"
  }
}
