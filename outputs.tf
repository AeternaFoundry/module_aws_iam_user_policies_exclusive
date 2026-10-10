output "iam_user_policies_exclusives_policy_names" {
  description = "Map of policy_names values across all iam_user_policies_exclusives, keyed the same as var.iam_user_policies_exclusives"
  value       = { for k, v in aws_iam_user_policies_exclusive.iam_user_policies_exclusives : k => v.policy_names if v.policy_names != null && length(v.policy_names) > 0 }
}
output "iam_user_policies_exclusives_user_name" {
  description = "Map of user_name values across all iam_user_policies_exclusives, keyed the same as var.iam_user_policies_exclusives"
  value       = { for k, v in aws_iam_user_policies_exclusive.iam_user_policies_exclusives : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

