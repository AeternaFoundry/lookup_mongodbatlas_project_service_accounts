data "mongodbatlas_project_service_accounts" "project_service_accounts_lookup" {
  for_each = var.project_service_accounts_lookup

  project_id             = each.value.project_id
  include_system_managed = each.value.include_system_managed
}

