variable "dialogflow_environments" {
  description = <<EOT
Map of dialogflow_environments, attributes below
Required:
    - environmentid
Optional:
    - agent_version
    - deletion_policy
    - description
    - location
    - project
    - fulfillment (block):
        - display_name (optional)
        - features (optional, block):
            - type (required)
        - generic_web_service (optional, block):
            - password (optional)
            - request_headers (optional)
            - uri (required)
            - username (optional)
        - name (optional)
    - text_to_speech_settings (block):
        - enable_text_to_speech (optional)
        - output_audio_encoding (optional)
        - sample_rate_hertz (optional)
        - synthesize_speech_configs (optional, block):
            - effects_profile_id (optional)
            - language (required)
            - pitch (optional)
            - speaking_rate (optional)
            - voice (optional, block):
                - name (optional)
                - ssml_gender (optional)
            - volume_gain_db (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    environmentid   = string
    agent_version   = optional(string)
    deletion_policy = optional(string)
    description     = optional(string)
    location        = optional(string)
    project         = optional(string)
    fulfillment = optional(object({
      display_name = optional(string)
      features = optional(list(object({
        type = string
      })))
      generic_web_service = optional(object({
        password        = optional(string)
        request_headers = optional(map(string))
        uri             = string
        username        = optional(string)
      }))
      name = optional(string)
    }))
    text_to_speech_settings = optional(object({
      enable_text_to_speech = optional(bool)
      output_audio_encoding = optional(string)
      sample_rate_hertz     = optional(number)
      synthesize_speech_configs = optional(list(object({
        effects_profile_id = optional(list(string))
        language           = string
        pitch              = optional(number)
        speaking_rate      = optional(number)
        voice = optional(object({
          name        = optional(string)
          ssml_gender = optional(string)
        }))
        volume_gain_db = optional(number)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

