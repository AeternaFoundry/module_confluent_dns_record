output "dns_records_id" {
  description = "Map of id values across all dns_records, keyed the same as var.dns_records except keys with no id are omitted"
  value       = { for k, v in confluent_dns_record.dns_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_records_display_name" {
  description = "Map of display_name values across all dns_records, keyed the same as var.dns_records except keys with no display_name are omitted"
  value       = { for k, v in confluent_dns_record.dns_records : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dns_records_domain" {
  description = "Map of domain values across all dns_records, keyed the same as var.dns_records except keys with no domain are omitted"
  value       = { for k, v in confluent_dns_record.dns_records : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "dns_records_environment" {
  description = "Map of environment values across all dns_records, keyed the same as var.dns_records except keys with no environment are omitted"
  value       = { for k, v in confluent_dns_record.dns_records : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "dns_records_gateway" {
  description = "Map of gateway values across all dns_records, keyed the same as var.dns_records except keys with no gateway are omitted"
  value       = { for k, v in confluent_dns_record.dns_records : k => one(v.gateway) if v.gateway != null && length(v.gateway) > 0 }
}
output "dns_records_private_link_access_point" {
  description = "Map of private_link_access_point values across all dns_records, keyed the same as var.dns_records except keys with no private_link_access_point are omitted"
  value       = { for k, v in confluent_dns_record.dns_records : k => one(v.private_link_access_point) if v.private_link_access_point != null && length(v.private_link_access_point) > 0 }
}

