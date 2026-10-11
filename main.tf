resource "google_dialogflow_environment" "dialogflow_environments" {
  for_each = var.dialogflow_environments

  environmentid   = each.value.environmentid
  agent_version   = each.value.agent_version
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  location        = each.value.location
  project         = each.value.project

  dynamic "fulfillment" {
    for_each = each.value.fulfillment != null ? [each.value.fulfillment] : []
    content {
      display_name = fulfillment.value.display_name
      dynamic "features" {
        for_each = fulfillment.value.features != null ? fulfillment.value.features : []
        content {
          type = features.value.type
        }
      }
      dynamic "generic_web_service" {
        for_each = fulfillment.value.generic_web_service != null ? [fulfillment.value.generic_web_service] : []
        content {
          password        = generic_web_service.value.password
          request_headers = generic_web_service.value.request_headers
          uri             = generic_web_service.value.uri
          username        = generic_web_service.value.username
        }
      }
      name = fulfillment.value.name
    }
  }

  dynamic "text_to_speech_settings" {
    for_each = each.value.text_to_speech_settings != null ? [each.value.text_to_speech_settings] : []
    content {
      enable_text_to_speech = text_to_speech_settings.value.enable_text_to_speech
      output_audio_encoding = text_to_speech_settings.value.output_audio_encoding
      sample_rate_hertz     = text_to_speech_settings.value.sample_rate_hertz
      dynamic "synthesize_speech_configs" {
        for_each = text_to_speech_settings.value.synthesize_speech_configs != null ? text_to_speech_settings.value.synthesize_speech_configs : []
        content {
          effects_profile_id = synthesize_speech_configs.value.effects_profile_id
          language           = synthesize_speech_configs.value.language
          pitch              = synthesize_speech_configs.value.pitch
          speaking_rate      = synthesize_speech_configs.value.speaking_rate
          dynamic "voice" {
            for_each = synthesize_speech_configs.value.voice != null ? [synthesize_speech_configs.value.voice] : []
            content {
              name        = voice.value.name
              ssml_gender = voice.value.ssml_gender
            }
          }
          volume_gain_db = synthesize_speech_configs.value.volume_gain_db
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

