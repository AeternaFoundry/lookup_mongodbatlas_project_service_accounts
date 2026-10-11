output "project_service_accounts_lookup_include_system_managed" {
  description = "Map of include_system_managed values across all project_service_accounts_lookup, keyed the same as var.project_service_accounts_lookup except keys with no include_system_managed are omitted"
  value       = { for k, v in data.mongodbatlas_project_service_accounts.project_service_accounts_lookup : k => v.include_system_managed if v.include_system_managed != null }
}
output "project_service_accounts_lookup_project_id" {
  description = "Map of project_id values across all project_service_accounts_lookup, keyed the same as var.project_service_accounts_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_project_service_accounts.project_service_accounts_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_service_accounts_lookup_results" {
  description = "Map of results values across all project_service_accounts_lookup, keyed the same as var.project_service_accounts_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_project_service_accounts.project_service_accounts_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

