# 0x13. Firewall

## Task 0: Block All Incoming Traffic But

### Objective:
Configure `ufw` (Uncomplicated Firewall) on a web server to **deny all incoming traffic**, except for essential ports:

- **22 (SSH)** – for remote terminal access
- **80 (HTTP)** – for serving web content
- **443 (HTTPS)** – for serving secure web content

---

### Steps Taken:

1. **Update package lists and install `ufw`:**
   ```bash
   sudo apt update
   sudo apt install ufw -y
