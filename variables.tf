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
  validation {
    condition = alltrue([
      for k, v in var.billing_alerts : (
        contains(["usage_threshold"], v.alert_type)
      )
    ])
    error_message = "must be one of: \"usage_threshold\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_alerts : (
        v.usage_threshold == null || (v.usage_threshold.filters == null || alltrue([for item in v.usage_threshold.filters : (contains(["customer"], item.type))]))
      )
    ])
    error_message = "must be one of: \"customer\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_alerts : (
        v.usage_threshold == null || (contains(["one_time"], v.usage_threshold.recurrence))
      )
    ])
    error_message = "must be one of: \"one_time\""
  }
}

