output "sagemaker_user_profiles_id" {
  description = "Map of id values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_user_profiles_arn" {
  description = "Map of arn values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_user_profiles_domain_id" {
  description = "Map of domain_id values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "sagemaker_user_profiles_home_efs_file_system_uid" {
  description = "Map of home_efs_file_system_uid values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.home_efs_file_system_uid if v.home_efs_file_system_uid != null && length(v.home_efs_file_system_uid) > 0 }
}
output "sagemaker_user_profiles_region" {
  description = "Map of region values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_user_profiles_single_sign_on_user_identifier" {
  description = "Map of single_sign_on_user_identifier values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.single_sign_on_user_identifier if v.single_sign_on_user_identifier != null && length(v.single_sign_on_user_identifier) > 0 }
}
output "sagemaker_user_profiles_single_sign_on_user_value" {
  description = "Map of single_sign_on_user_value values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.single_sign_on_user_value if v.single_sign_on_user_value != null && length(v.single_sign_on_user_value) > 0 }
}
output "sagemaker_user_profiles_tags" {
  description = "Map of tags values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_user_profiles_tags_all" {
  description = "Map of tags_all values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_user_profiles_user_profile_name" {
  description = "Map of user_profile_name values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => v.user_profile_name if v.user_profile_name != null && length(v.user_profile_name) > 0 }
}
output "sagemaker_user_profiles_user_settings" {
  description = "Map of user_settings values across all sagemaker_user_profiles, keyed the same as var.sagemaker_user_profiles"
  value       = { for k, v in aws_sagemaker_user_profile.sagemaker_user_profiles : k => one(v.user_settings) if v.user_settings != null && length(v.user_settings) > 0 }
}

