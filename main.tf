resource "confluent_dns_record" "dns_records" {
  for_each = var.dns_records

  domain       = each.value.domain
  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }

  gateway {
    id = each.value.gateway.id
  }

  dynamic "private_link_access_point" {
    for_each = each.value.private_link_access_point != null ? [each.value.private_link_access_point] : []
    content {
      id = private_link_access_point.value.id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

