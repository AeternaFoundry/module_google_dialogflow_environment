output "dialogflow_environments_id" {
  description = "Map of id values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_environments_agent_version" {
  description = "Map of agent_version values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no agent_version are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.agent_version if v.agent_version != null && length(v.agent_version) > 0 }
}
output "dialogflow_environments_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_environments_description" {
  description = "Map of description values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no description are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dialogflow_environments_environmentid" {
  description = "Map of environmentid values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no environmentid are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.environmentid if v.environmentid != null && length(v.environmentid) > 0 }
}
output "dialogflow_environments_fulfillment" {
  description = "Map of fulfillment values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no fulfillment are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => one(v.fulfillment) if v.fulfillment != null && length(v.fulfillment) > 0 }
}
output "dialogflow_environments_location" {
  description = "Map of location values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no location are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dialogflow_environments_name" {
  description = "Map of name values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_environments_project" {
  description = "Map of project values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dialogflow_environments_state" {
  description = "Map of state values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no state are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dialogflow_environments_text_to_speech_settings" {
  description = "Map of text_to_speech_settings values across all dialogflow_environments, keyed the same as var.dialogflow_environments except keys with no text_to_speech_settings are omitted"
  value       = { for k, v in google_dialogflow_environment.dialogflow_environments : k => one(v.text_to_speech_settings) if v.text_to_speech_settings != null && length(v.text_to_speech_settings) > 0 }
}

