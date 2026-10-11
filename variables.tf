variable "sagemaker_user_profiles" {
  description = <<EOT
Map of sagemaker_user_profiles, attributes below
Required:
    - domain_id
    - user_profile_name
Optional:
    - region
    - single_sign_on_user_identifier
    - single_sign_on_user_value
    - tags
    - tags_all
    - user_settings (block):
        - auto_mount_home_efs (optional)
        - canvas_app_settings (optional, block):
            - direct_deploy_settings (optional, block):
                - status (optional)
            - emr_serverless_settings (optional, block):
                - execution_role_arn (optional)
                - status (optional)
            - generative_ai_settings (optional, block):
                - amazon_bedrock_role_arn (optional)
            - identity_provider_oauth_settings (optional, block):
                - data_source_name (optional)
                - secret_arn (required)
                - status (optional)
            - kendra_settings (optional, block):
                - status (optional)
            - model_register_settings (optional, block):
                - cross_account_model_register_role_arn (optional)
                - status (optional)
            - time_series_forecasting_settings (optional, block):
                - amazon_forecast_role_arn (optional)
                - status (optional)
            - workspace_settings (optional, block):
                - s3_artifact_path (optional)
                - s3_kms_key_id (optional)
        - code_editor_app_settings (optional, block):
            - app_lifecycle_management (optional, block):
                - idle_settings (optional, block):
                    - idle_timeout_in_minutes (optional)
                    - lifecycle_management (optional)
                    - max_idle_timeout_in_minutes (optional)
                    - min_idle_timeout_in_minutes (optional)
            - built_in_lifecycle_config_arn (optional)
            - custom_image (optional, block):
                - app_image_config_name (required)
                - image_name (required)
                - image_version_number (optional)
            - default_resource_spec (optional, block):
                - instance_type (optional)
                - lifecycle_config_arn (optional)
                - sagemaker_image_arn (optional)
                - sagemaker_image_version_alias (optional)
                - sagemaker_image_version_arn (optional)
            - lifecycle_config_arns (optional)
        - custom_file_system_config (optional, block):
            - efs_file_system_config (optional, block):
                - file_system_id (required)
                - file_system_path (optional)
        - custom_posix_user_config (optional, block):
            - gid (required)
            - uid (required)
        - default_landing_uri (optional)
        - execution_role (required)
        - jupyter_lab_app_settings (optional, block):
            - app_lifecycle_management (optional, block):
                - idle_settings (optional, block):
                    - idle_timeout_in_minutes (optional)
                    - lifecycle_management (optional)
                    - max_idle_timeout_in_minutes (optional)
                    - min_idle_timeout_in_minutes (optional)
            - built_in_lifecycle_config_arn (optional)
            - code_repository (optional, block):
                - repository_url (required)
            - custom_image (optional, block):
                - app_image_config_name (required)
                - image_name (required)
                - image_version_number (optional)
            - default_resource_spec (optional, block):
                - instance_type (optional)
                - lifecycle_config_arn (optional)
                - sagemaker_image_arn (optional)
                - sagemaker_image_version_alias (optional)
                - sagemaker_image_version_arn (optional)
            - emr_settings (optional, block):
                - assumable_role_arns (optional)
                - execution_role_arns (optional)
            - lifecycle_config_arns (optional)
        - jupyter_server_app_settings (optional, block):
            - code_repository (optional, block):
                - repository_url (required)
            - default_resource_spec (optional, block):
                - instance_type (optional)
                - lifecycle_config_arn (optional)
                - sagemaker_image_arn (optional)
                - sagemaker_image_version_alias (optional)
                - sagemaker_image_version_arn (optional)
            - lifecycle_config_arns (optional)
        - kernel_gateway_app_settings (optional, block):
            - custom_image (optional, block):
                - app_image_config_name (required)
                - image_name (required)
                - image_version_number (optional)
            - default_resource_spec (optional, block):
                - instance_type (optional)
                - lifecycle_config_arn (optional)
                - sagemaker_image_arn (optional)
                - sagemaker_image_version_alias (optional)
                - sagemaker_image_version_arn (optional)
            - lifecycle_config_arns (optional)
        - r_session_app_settings (optional, block):
            - custom_image (optional, block):
                - app_image_config_name (required)
                - image_name (required)
                - image_version_number (optional)
            - default_resource_spec (optional, block):
                - instance_type (optional)
                - lifecycle_config_arn (optional)
                - sagemaker_image_arn (optional)
                - sagemaker_image_version_alias (optional)
                - sagemaker_image_version_arn (optional)
        - r_studio_server_pro_app_settings (optional, block):
            - access_status (optional)
            - user_group (optional)
        - security_groups (optional)
        - sharing_settings (optional, block):
            - notebook_output_option (optional)
            - s3_kms_key_id (optional)
            - s3_output_path (optional)
        - space_storage_settings (optional, block):
            - default_ebs_storage_settings (optional, block):
                - default_ebs_volume_size_in_gb (required)
                - maximum_ebs_volume_size_in_gb (required)
        - studio_web_portal (optional)
        - studio_web_portal_settings (optional, block):
            - hidden_app_types (optional)
            - hidden_instance_types (optional)
            - hidden_ml_tools (optional)
        - tensor_board_app_settings (optional, block):
            - default_resource_spec (optional, block):
                - instance_type (optional)
                - lifecycle_config_arn (optional)
                - sagemaker_image_arn (optional)
                - sagemaker_image_version_alias (optional)
                - sagemaker_image_version_arn (optional)
EOT

  type = map(object({
    domain_id                      = string
    user_profile_name              = string
    region                         = optional(string)
    single_sign_on_user_identifier = optional(string)
    single_sign_on_user_value      = optional(string)
    tags                           = optional(map(string))
    tags_all                       = optional(map(string))
    user_settings = optional(object({
      auto_mount_home_efs = optional(string)
      canvas_app_settings = optional(object({
        direct_deploy_settings = optional(object({
          status = optional(string)
        }))
        emr_serverless_settings = optional(object({
          execution_role_arn = optional(string)
          status             = optional(string)
        }))
        generative_ai_settings = optional(object({
          amazon_bedrock_role_arn = optional(string)
        }))
        identity_provider_oauth_settings = optional(list(object({
          data_source_name = optional(string)
          secret_arn       = string
          status           = optional(string)
        })))
        kendra_settings = optional(object({
          status = optional(string)
        }))
        model_register_settings = optional(object({
          cross_account_model_register_role_arn = optional(string)
          status                                = optional(string)
        }))
        time_series_forecasting_settings = optional(object({
          amazon_forecast_role_arn = optional(string)
          status                   = optional(string)
        }))
        workspace_settings = optional(object({
          s3_artifact_path = optional(string)
          s3_kms_key_id    = optional(string)
        }))
      }))
      code_editor_app_settings = optional(object({
        app_lifecycle_management = optional(object({
          idle_settings = optional(object({
            idle_timeout_in_minutes     = optional(number)
            lifecycle_management        = optional(string)
            max_idle_timeout_in_minutes = optional(number)
            min_idle_timeout_in_minutes = optional(number)
          }))
        }))
        built_in_lifecycle_config_arn = optional(string)
        custom_image = optional(list(object({
          app_image_config_name = string
          image_name            = string
          image_version_number  = optional(number)
        })))
        default_resource_spec = optional(object({
          instance_type                 = optional(string)
          lifecycle_config_arn          = optional(string)
          sagemaker_image_arn           = optional(string)
          sagemaker_image_version_alias = optional(string)
          sagemaker_image_version_arn   = optional(string)
        }))
        lifecycle_config_arns = optional(set(string))
      }))
      custom_file_system_config = optional(list(object({
        efs_file_system_config = optional(list(object({
          file_system_id   = string
          file_system_path = optional(string)
        })))
      })))
      custom_posix_user_config = optional(object({
        gid = number
        uid = number
      }))
      default_landing_uri = optional(string)
      execution_role      = string
      jupyter_lab_app_settings = optional(object({
        app_lifecycle_management = optional(object({
          idle_settings = optional(object({
            idle_timeout_in_minutes     = optional(number)
            lifecycle_management        = optional(string)
            max_idle_timeout_in_minutes = optional(number)
            min_idle_timeout_in_minutes = optional(number)
          }))
        }))
        built_in_lifecycle_config_arn = optional(string)
        code_repository = optional(list(object({
          repository_url = string
        })))
        custom_image = optional(list(object({
          app_image_config_name = string
          image_name            = string
          image_version_number  = optional(number)
        })))
        default_resource_spec = optional(object({
          instance_type                 = optional(string)
          lifecycle_config_arn          = optional(string)
          sagemaker_image_arn           = optional(string)
          sagemaker_image_version_alias = optional(string)
          sagemaker_image_version_arn   = optional(string)
        }))
        emr_settings = optional(object({
          assumable_role_arns = optional(set(string))
          execution_role_arns = optional(set(string))
        }))
        lifecycle_config_arns = optional(set(string))
      }))
      jupyter_server_app_settings = optional(object({
        code_repository = optional(list(object({
          repository_url = string
        })))
        default_resource_spec = optional(object({
          instance_type                 = optional(string)
          lifecycle_config_arn          = optional(string)
          sagemaker_image_arn           = optional(string)
          sagemaker_image_version_alias = optional(string)
          sagemaker_image_version_arn   = optional(string)
        }))
        lifecycle_config_arns = optional(set(string))
      }))
      kernel_gateway_app_settings = optional(object({
        custom_image = optional(list(object({
          app_image_config_name = string
          image_name            = string
          image_version_number  = optional(number)
        })))
        default_resource_spec = optional(object({
          instance_type                 = optional(string)
          lifecycle_config_arn          = optional(string)
          sagemaker_image_arn           = optional(string)
          sagemaker_image_version_alias = optional(string)
          sagemaker_image_version_arn   = optional(string)
        }))
        lifecycle_config_arns = optional(set(string))
      }))
      r_session_app_settings = optional(object({
        custom_image = optional(list(object({
          app_image_config_name = string
          image_name            = string
          image_version_number  = optional(number)
        })))
        default_resource_spec = optional(object({
          instance_type                 = optional(string)
          lifecycle_config_arn          = optional(string)
          sagemaker_image_arn           = optional(string)
          sagemaker_image_version_alias = optional(string)
          sagemaker_image_version_arn   = optional(string)
        }))
      }))
      r_studio_server_pro_app_settings = optional(object({
        access_status = optional(string)
        user_group    = optional(string)
      }))
      security_groups = optional(set(string))
      sharing_settings = optional(object({
        notebook_output_option = optional(string)
        s3_kms_key_id          = optional(string)
        s3_output_path         = optional(string)
      }))
      space_storage_settings = optional(object({
        default_ebs_storage_settings = optional(object({
          default_ebs_volume_size_in_gb = number
          maximum_ebs_volume_size_in_gb = number
        }))
      }))
      studio_web_portal = optional(string)
      studio_web_portal_settings = optional(object({
        hidden_app_types      = optional(set(string))
        hidden_instance_types = optional(set(string))
        hidden_ml_tools       = optional(set(string))
      }))
      tensor_board_app_settings = optional(object({
        default_resource_spec = optional(object({
          instance_type                 = optional(string)
          lifecycle_config_arn          = optional(string)
          sagemaker_image_arn           = optional(string)
          sagemaker_image_version_alias = optional(string)
          sagemaker_image_version_arn   = optional(string)
        }))
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.canvas_app_settings == null || (v.user_settings.canvas_app_settings.identity_provider_oauth_settings == null || (length(v.user_settings.canvas_app_settings.identity_provider_oauth_settings) <= 20)))
      )
    ])
    error_message = "Each identity_provider_oauth_settings list must contain at most 20 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.code_editor_app_settings == null || (v.user_settings.code_editor_app_settings.custom_image == null || (length(v.user_settings.code_editor_app_settings.custom_image) <= 200)))
      )
    ])
    error_message = "Each custom_image list must contain at most 200 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_lab_app_settings == null || (v.user_settings.jupyter_lab_app_settings.code_repository == null || (length(v.user_settings.jupyter_lab_app_settings.code_repository) <= 10)))
      )
    ])
    error_message = "Each code_repository list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_lab_app_settings == null || (v.user_settings.jupyter_lab_app_settings.custom_image == null || (length(v.user_settings.jupyter_lab_app_settings.custom_image) <= 200)))
      )
    ])
    error_message = "Each custom_image list must contain at most 200 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_server_app_settings == null || (v.user_settings.jupyter_server_app_settings.code_repository == null || (length(v.user_settings.jupyter_server_app_settings.code_repository) <= 10)))
      )
    ])
    error_message = "Each code_repository list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.kernel_gateway_app_settings == null || (v.user_settings.kernel_gateway_app_settings.custom_image == null || (length(v.user_settings.kernel_gateway_app_settings.custom_image) <= 200)))
      )
    ])
    error_message = "Each custom_image list must contain at most 200 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.r_session_app_settings == null || (v.user_settings.r_session_app_settings.custom_image == null || (length(v.user_settings.r_session_app_settings.custom_image) <= 200)))
      )
    ])
    error_message = "Each custom_image list must contain at most 200 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        (length(v.user_profile_name) >= 1 && length(v.user_profile_name) <= 63) && (can(regex("^[0-9A-Za-z](-*[0-9A-Za-z]){0,62}$", v.user_profile_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.canvas_app_settings == null || (v.user_settings.canvas_app_settings.workspace_settings == null || (v.user_settings.canvas_app_settings.workspace_settings.s3_artifact_path == null || ((can(regex("^(https|s3)://([^/])/?(.*)$", v.user_settings.canvas_app_settings.workspace_settings.s3_artifact_path))) && (length(v.user_settings.canvas_app_settings.workspace_settings.s3_artifact_path) >= 1 && length(v.user_settings.canvas_app_settings.workspace_settings.s3_artifact_path) <= 1024)))))
      )
    ])
    error_message = "all of: must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.code_editor_app_settings == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.idle_timeout_in_minutes == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.idle_timeout_in_minutes >= 60 && v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.idle_timeout_in_minutes <= 525600)))))
      )
    ])
    error_message = "must be between 60 and 525600"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.code_editor_app_settings == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.max_idle_timeout_in_minutes == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.max_idle_timeout_in_minutes >= 60 && v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.max_idle_timeout_in_minutes <= 525600)))))
      )
    ])
    error_message = "must be between 60 and 525600"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.code_editor_app_settings == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.min_idle_timeout_in_minutes == null || (v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.min_idle_timeout_in_minutes >= 60 && v.user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings.min_idle_timeout_in_minutes <= 525600)))))
      )
    ])
    error_message = "must be between 60 and 525600"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.custom_file_system_config == null || alltrue([for item in v.user_settings.custom_file_system_config : (item.efs_file_system_config == null || alltrue([for item in item.efs_file_system_config : (item.file_system_path == null || (length(item.file_system_path) > 0))]))]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.custom_posix_user_config == null || (v.user_settings.custom_posix_user_config.gid >= 1001))
      )
    ])
    error_message = "must be at least 1001"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.custom_posix_user_config == null || (v.user_settings.custom_posix_user_config.uid >= 10000))
      )
    ])
    error_message = "must be at least 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_lab_app_settings == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.idle_timeout_in_minutes == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.idle_timeout_in_minutes >= 60 && v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.idle_timeout_in_minutes <= 525600)))))
      )
    ])
    error_message = "must be between 60 and 525600"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_lab_app_settings == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.max_idle_timeout_in_minutes == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.max_idle_timeout_in_minutes >= 60 && v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.max_idle_timeout_in_minutes <= 525600)))))
      )
    ])
    error_message = "must be between 60 and 525600"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_lab_app_settings == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.min_idle_timeout_in_minutes == null || (v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.min_idle_timeout_in_minutes >= 60 && v.user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings.min_idle_timeout_in_minutes <= 525600)))))
      )
    ])
    error_message = "must be between 60 and 525600"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_lab_app_settings == null || (v.user_settings.jupyter_lab_app_settings.code_repository == null || alltrue([for item in v.user_settings.jupyter_lab_app_settings.code_repository : (length(item.repository_url) >= 1 && length(item.repository_url) <= 1024)])))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_user_profiles : (
        v.user_settings == null || (v.user_settings.jupyter_server_app_settings == null || (v.user_settings.jupyter_server_app_settings.code_repository == null || alltrue([for item in v.user_settings.jupyter_server_app_settings.code_repository : (length(item.repository_url) >= 1 && length(item.repository_url) <= 1024)])))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 55 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

