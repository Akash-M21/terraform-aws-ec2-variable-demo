output "region" {
  value = var.aws_region
}

output "owner_name" {
  value = var.owner_info[0]
}

output "owner_age" {
  value = var.owner_info[1]
}

output "owner_active" {
  value = var.owner_info[2]
}

output "project_tags" {
  value = var.common_tags
}

output "security_groups" {
  value = var.security_groups
}
