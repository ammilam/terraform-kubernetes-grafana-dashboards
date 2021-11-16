variable "monitoring_namespace" {
  type        = string
  description = "Namespace that kube-prometheus-stack is deployed into"
}

variable "grafana_dashboard_label" {
  type        = string
  default     = "grafana_dashboard"
  description = "label used to provision a grafana dashbaord"
}

variable "grafana_dashboards_directory" {
  type        = string
  description = "location of the directory containing the grafana dashboards"
}