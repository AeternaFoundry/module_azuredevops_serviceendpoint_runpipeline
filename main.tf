resource "azuredevops_serviceendpoint_runpipeline" "serviceendpoint_runpipelines" {
  for_each = var.serviceendpoint_runpipelines

  organization_name     = each.value.organization_name
  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  description           = each.value.description

  auth_personal {
    personal_access_token = each.value.auth_personal.personal_access_token
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

