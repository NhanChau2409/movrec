output "databricks_host" {
  value = azurerm_databricks_workspace.this.workspace_url
}

output "rg_name" {
  value = azurerm_resource_group.this.name
}

output "rg_location" {
  value = azurerm_resource_group.this.location
}

output "azure_client_id" {
  description = "The Azure AD service princpal's databricks (client) ID."
  value       = azuread_application.this.application_id
}

output "azure_client_secret" {
  description = "The Azure AD service principal's databricks client secret value."
  value       = azuread_service_principal_password.this.value
  sensitive   = true
}

output "databricks_service_principal_application_id" {
  value       = databricks_service_principal.sp.application_id
  description = "Application ID of the Azure Databricks service principal."
}

output "databricks_service_principal_display_name" {
  value       = databricks_service_principal.sp.display_name
  description = "Workspace display name of the Azure Databricks service principal."
}

output "databricks_workspace_service_principal_id" {
  value       = databricks_service_principal.sp.id
  description = "Workspace ID of the Azure Databricks service principal. This ID is generated by Azure Databricks for this workspace."
}

output "databricks_mount_name" {
  value = databricks_mount.this.name
  description = "Mount point name from ADLS gen 2 Storage"
}

output "adls_gen_2_account_display_name" {
  value = azurerm_storage_account.this.name
  description = "ADLS gen 2 storage account"
}

output "adls_gen_2_container_display_name" {
  value = azurerm_storage_container.this.name
  description = "ADLS gen 2 storage account"
}