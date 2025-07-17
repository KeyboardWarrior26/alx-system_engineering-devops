# 0x18. Webstack monitoring

This project involves installing the Datadog agent on a web server, monitoring server metrics, and setting up alerts using Datadog.


## Task 1: Monitors

Two Datadog monitors were created:

1. **Read requests per second monitor** using the metric `system.io.r_s`
2. **Write requests per second monitor** using the metric `system.io.w_s`

These are visible on the Datadog dashboard.
