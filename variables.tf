variable "serviceendpoint_runpipelines" {
  description = <<EOT
Map of serviceendpoint_runpipelines, attributes below
Required:
    - organization_name
    - project_id
    - service_endpoint_name
    - auth_personal (block):
        - personal_access_token (required)
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    organization_name     = string
    project_id            = string
    service_endpoint_name = string
    description           = optional(string)
    auth_personal = object({
      personal_access_token = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_runpipelines : (
        length(trimspace(v.auth_personal.personal_access_token)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

