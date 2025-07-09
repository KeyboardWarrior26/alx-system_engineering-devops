# 0x10. HTTPS SSL

## DevOps | SysAdmin | Security

This project focuses on securing web traffic using **HTTPS** and **SSL/TLS encryption**. It includes tasks to configure DNS records, SSL termination with HAProxy, and understanding HTTPS concepts critical for secure web infrastructure.

---

## Learning Objectives

By the end of this project, you should be able to explain:

- What HTTPS and SSL/TLS are
- The two main roles of SSL:
  - Encryption
  - Authentication
- Why encrypting traffic is important
- What SSL termination is
- How to configure DNS subdomains to point to server IPs
- How to use `dig`, `awk`, and Bash to audit DNS records

---

## Project Tasks Summary

### 0. World wide web ✅

- Configure subdomains (`www`, `lb-01`, `web-01`, `web-02`) in DNS to point to specific IPs.
- Write a Bash script `0-world_wide_web` to:
  - Use `dig` to query DNS A records
  - Accept 1 or 2 arguments
  - Display record type and destination
- Must use:
  - At least one Bash function
  - `awk` for parsing
- Must pass `shellcheck -e SC2086`

---

## Script Usage

```bash
./0-world_wide_web yourdomain.com
