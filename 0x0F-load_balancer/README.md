# 0x0F. Load Balancer

## Task 0: Double the Number of Webservers

### Description

In this task, we configure a second web server (`web-02`) to mirror the first (`web-01`) so that we can achieve **high availability** and **load distribution**.

We also add a custom HTTP response header to each web server to help us track which server handled the request. This helps visualize how load balancing works.

### Objectives

- Configure Nginx on `web-02` to serve the same content as `web-01`
- Add a custom response header `X-Served-By` to each server, showing its hostname

### Commands Used

The following commands were used in the script `0-custom_http_response_header`:

```bash
#!/usr/bin/env bash
# Script to install Nginx and add a custom response header

apt-get update
apt-get install -y nginx
echo "Hello World!" > /var/www/html/index.html

# Add custom header to Nginx default config
sed -i "/server_name _;/a \\tadd_header X-Served-By \$hostname;" /etc/nginx/sites-available/default

# Restart Nginx
service nginx restart
