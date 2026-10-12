variable "billing_alerts" {
  description = <<EOT
Map of billing_alerts, attributes below
Required:
    - alert_type
    - title
Optional:
    - usage_threshold
EOT

  type = map(object({
    alert_type = string
    title      = string
    usage_threshold = optional(object({
      filters = optional(list(object({
        customer = optional(string)
        type     = string
      })))
      gte        = number
      meter      = string
      recurrence = string
    }))
  }))
}

