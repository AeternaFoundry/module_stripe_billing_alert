output "billing_alerts_id" {
  description = "Map of id values across all billing_alerts, keyed the same as var.billing_alerts except keys with no id are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "billing_alerts_alert_type" {
  description = "Map of alert_type values across all billing_alerts, keyed the same as var.billing_alerts except keys with no alert_type are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.alert_type if v.alert_type != null && length(v.alert_type) > 0 }
}
output "billing_alerts_livemode" {
  description = "Map of livemode values across all billing_alerts, keyed the same as var.billing_alerts except keys with no livemode are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.livemode if v.livemode != null }
}
output "billing_alerts_object" {
  description = "Map of object values across all billing_alerts, keyed the same as var.billing_alerts except keys with no object are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.object if v.object != null && length(v.object) > 0 }
}
output "billing_alerts_status" {
  description = "Map of status values across all billing_alerts, keyed the same as var.billing_alerts except keys with no status are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.status if v.status != null && length(v.status) > 0 }
}
output "billing_alerts_title" {
  description = "Map of title values across all billing_alerts, keyed the same as var.billing_alerts except keys with no title are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.title if v.title != null && length(v.title) > 0 }
}
output "billing_alerts_usage_threshold" {
  description = "Map of usage_threshold values across all billing_alerts, keyed the same as var.billing_alerts except keys with no usage_threshold are omitted"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.usage_threshold if v.usage_threshold != null && length(v.usage_threshold) > 0 }
}

