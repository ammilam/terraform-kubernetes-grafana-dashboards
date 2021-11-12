# Grafana Dashboards As Code in K8s

This module provisions Grafana Dashboards as code by creating k8s configmaps from exported Grafana dashboard(s). Dashboards are exported in JSON format and placed in a directory which is referenced by the `grafana_dashboards_directory` variable. This module is intended to be used with a Grafana deployment created in K8s via kube-prometheus-stack, or the standalone Grafana Helm Chart.

## Usage

In order to start provisioning Grafana dashboards, simply create a directory and fill it with your favorite Grafana dashboards in valid [Grafana Dashboards Format](https://grafana.com/docs/grafana/latest/dashboards/json-model/) (if in doubt, make it in the gui and [export it](https://grafana.com/docs/grafana/latest/dashboards/export-import/)), then reference the directory in a module definiton like the example below...

```terraform
# grafana dashboards module
module "grafana_dashboards" {

  source                       = "<source>"
  grafana_dashboards_directory = "${path.module}/grafana-dashboards" # directory containing the dashboards
  monitoring_namespace         = module.kube_prometheus_stack.monitoring_namespace
}
```
