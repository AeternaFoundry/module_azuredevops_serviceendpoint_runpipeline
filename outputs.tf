output "serviceendpoint_runpipelines_id" {
  description = "Map of id values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_runpipelines_auth_personal" {
  description = "Map of auth_personal values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no auth_personal are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => one(v.auth_personal) if v.auth_personal != null && length(v.auth_personal) > 0 }
  sensitive   = true
}
output "serviceendpoint_runpipelines_authorization" {
  description = "Map of authorization values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_runpipelines_description" {
  description = "Map of description values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_runpipelines_organization_name" {
  description = "Map of organization_name values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no organization_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.organization_name if v.organization_name != null && length(v.organization_name) > 0 }
}
output "serviceendpoint_runpipelines_project_id" {
  description = "Map of project_id values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_runpipelines_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}

