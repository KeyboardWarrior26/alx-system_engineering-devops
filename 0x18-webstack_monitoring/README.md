## Task 0:Webstack monitoring

This project involves installing the Datadog agent on a web server, monitoring server metrics, and setting up alerts using Datadog.


## Task 1: Monitors

Two Datadog monitors were created:

1. **Read requests per second monitor** using the metric `system.io.r_s`
2. **Write requests per second monitor** using the metric `system.io.w_s`

These are visible on the Datadog dashboard.


## Task 2: Datadog Dashboard

A dashboard named **"ALX Monitoring Dashboard"** was created in the Datadog UI.

- The dashboard includes at least 4 widgets showing different system metrics and monitoring info.
- Dashboard ID: `6mj-bnx-haa`
- Metrics include:
  - Disk read requests per second (`system.io.r_s`)
  - Disk write requests per second (`system.io.w_s`)
  - CPU usage
  - Memory usage

This dashboard provides a visual overview of server health and performance.
