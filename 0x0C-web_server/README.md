# 0x0C. Web Server

## Task 0: Install Nginx Web Server

### Objective
To automate the installation and configuration of the Nginx web server on an Ubuntu machine.

### Requirements
- Install the `nginx` package.
- Make sure the service is running.
- Confirm that Nginx is listening on port 80.
- Configure the firewall to allow HTTP traffic (port 80).

### File: `0-install_nginx_web_server`

This is a Bash script that performs the following:

1. Updates the package lists.
2. Installs the latest version of `nginx`.
3. Ensures `nginx` is enabled to start at boot.
4. Starts the `nginx` service.
5. Adjusts the UFW firewall to allow HTTP traffic.

### Usage

Run the script on a fresh Ubuntu machine:

```bash
sudo ./0-install_nginx_web_server
