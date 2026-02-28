# Passive Reconnaissance Report: holbertonschool.com

## 1. Executive Summary
This report summarizes the information gathered via **Shodan** for the domain `holbertonschool.com`. The reconnaissance focused on identifying active infrastructure, observed IP ranges, and the technological stack used by the organization.

---

## 2. Infrastructure Information

### IP Addresses & Network Ownership
The Shodan-discovered assets in this report are hosted within **Amazon Data Services France**, located in **Paris, France**.

| IP Address | Hostname | Organization | Location |
| :--- | :--- | :--- | :--- |
| `35.180.27.154` | `ec2-35-180-27-154.eu-west-3.compute.amazonaws.com` | Amazon Data Services France | Paris, FR |
| `52.47.143.83` | `yriry2.holbertonschool.com` | Amazon Data Services France | Paris, FR |

**Observed IP Ranges (inferred from discovered hosts):**
* `35.180.27.0/24`
* `52.47.143.0/24`

---

## 3. Technologies & Frameworks
Based on Shodan banner analysis and detected HTTP components, the following technologies appear to be in use:

### Web Servers & Operating Systems
* **Nginx (v1.18.0, v1.21.6):** Used as the primary web server / reverse proxy.
* **Ubuntu Linux:** Detected in the HTTP server banner on one host.

### Security & Encryption
* **SSL/TLS:** Secure communication is enabled on the discovered HTTPS service.
* **Certificate Authority:** **Let's Encrypt**
* **Supported Protocols:** **TLSv1.2, TLSv1.3**

### Applications & Services
* **Forum service:** Detected on the `yriry2.holbertonschool.com` subdomain (`Holberton School Level2 Forum`).
* **HTTP 301 redirects:** Observed from IP-based access and host redirection behavior.

---

## 4. Methodology
The reconnaissance was performed using Shodan Search Engine with the query:

`hostname:holbertonschool.com`

**Summary of Findings:**
* **Total Results:** 4
* **Top Ports:** 80 (HTTP), 443 (HTTPS)
* **Top Tags:** `cloud`, `eol-product`

> **Disclaimer:** This report is based on passive metadata provided by Shodan as observed in February 2026.
