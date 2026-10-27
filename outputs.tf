output "serviceendpoint_runpipelines_id" {
  description = "Map of id values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.id }
}
output "serviceendpoint_runpipelines_auth_personal" {
  description = "Map of auth_personal values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => one(v.auth_personal) }
  sensitive   = true
}
output "serviceendpoint_runpipelines_authorization" {
  description = "Map of authorization values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.authorization }
}
output "serviceendpoint_runpipelines_description" {
  description = "Map of description values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.description }
}
output "serviceendpoint_runpipelines_organization_name" {
  description = "Map of organization_name values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.organization_name }
}
output "serviceendpoint_runpipelines_project_id" {
  description = "Map of project_id values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.project_id }
}
output "serviceendpoint_runpipelines_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_runpipelines, keyed the same as var.serviceendpoint_runpipelines"
  value       = { for k, v in azuredevops_serviceendpoint_runpipeline.serviceendpoint_runpipelines : k => v.service_endpoint_name }
}

