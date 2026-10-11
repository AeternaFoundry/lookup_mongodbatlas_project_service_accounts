variable "project_service_accounts_lookup" {
  description = <<EOT
Map of project_service_accounts_lookup, attributes below
Required:
    - project_id
Optional:
    - include_system_managed
EOT

  type = map(object({
    project_id             = string
    include_system_managed = optional(bool)
  }))
}

