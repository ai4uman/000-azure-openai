resource "azurerm_container_registry" "acr" {
  location            = azurerm_resource_group.this.location
  name                = "devopsopenaiacr${var.env}"
  resource_group_name = azurerm_resource_group.this.name
  sku                 = "Standard"
}