output "billing_alerts_id" {
  description = "Map of id values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.id }
}
output "billing_alerts_alert_type" {
  description = "Map of alert_type values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.alert_type }
}
output "billing_alerts_livemode" {
  description = "Map of livemode values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.livemode }
}
output "billing_alerts_object" {
  description = "Map of object values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.object }
}
output "billing_alerts_status" {
  description = "Map of status values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.status }
}
output "billing_alerts_title" {
  description = "Map of title values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.title }
}
output "billing_alerts_usage_threshold" {
  description = "Map of usage_threshold values across all billing_alerts, keyed the same as var.billing_alerts"
  value       = { for k, v in stripe_billing_alert.billing_alerts : k => v.usage_threshold }
}

