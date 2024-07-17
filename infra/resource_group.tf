resource "azurerm_resource_group" "this" {
  location = var.region
  name     = "devops-openai-${var.region}-${var.env}"
}