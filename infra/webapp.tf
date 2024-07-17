resource "azurerm_service_plan" "svc_plan" {
  name                = "devops-openiai-svc-plan-${var.env}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  os_type             = "Linux"
  sku_name            = "P1v3"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = "devops-openai-webapp-${var.env}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_service_plan.svc_plan.location
  service_plan_id     = azurerm_service_plan.svc_plan.id
  virtual_network_subnet_id = azurerm_subnet.subnet-integ.id
  site_config {}
}