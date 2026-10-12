resource "stripe_billing_alert" "billing_alerts" {
  for_each = var.billing_alerts

  alert_type      = each.value.alert_type
  title           = each.value.title
  usage_threshold = each.value.usage_threshold
}

