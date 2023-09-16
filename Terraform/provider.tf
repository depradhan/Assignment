terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}


# You can use environment variables or service principals for authentication.
# Here, I'm using environment variables for simplicity.

# Environment variables for authentication:
# export ARM_CLIENT_ID="your-client-id"
# export ARM_CLIENT_SECRET="your-client-secret"
# export ARM_SUBSCRIPTION_ID="your-subscription-id"
# export ARM_TENANT_ID="your-tenant-id"

# Alternatively, you can use a service principal and specify its values here.

# provider "azurerm" {
#   client_id       = "2401a0d7-f199-4224-b060-d3c3bd54821e"
#   client_secret   = "3a35bb1f-544b-424d-910c-6fd9a90e96d5"
#   subscription_id = "f3869a99-f61f-4f00-92e1-1ee500358b1b"
#   tenant_id       = "c817f1d8-045b-4b9b-b5c9-17b8b1d71401"
# }