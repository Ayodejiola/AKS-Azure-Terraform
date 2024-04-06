data "azuread_client_config" "current" {}

resource "azuread_application" "spn" {
  display_name = var.service_principal_name
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "main" {
  client_id                    = azuread_application.spn.client_id
  app_role_assignment_required = true
  owners                       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal_password" "main" {
  service_principal_id = azuread_service_principal.main.object_id
}

/**
resource "azuread_directory_role_assignment" "example" {
  role_id             = azuread_custom_directory_role.example.object_id
  principal_object_id = data.azuread_user.example.object_id
}
*/
/**
resource "azuread_app_role_assignment" "rolespn" {
  app_role_id         = "00000000-0000-0000-0000-000000000000"
  principal_object_id = azuread_group.example.object_id
  resource_object_id  = azuread_service_principal.internal.object_id
}*/


