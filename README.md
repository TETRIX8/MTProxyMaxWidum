<p align="center">

**Created by TETRIX8**
  <h1 align="center">MTProxyWidum</h1>
  <p align="center"><b>The Ultimate Telegram MTProto Proxy Manager</b></p>
  <p align="center">
    One script. Full control. Zero hassle.
  </p>
  <p align="center">
    <img src="https://img.shields.io/badge/version-1.4.0--LTS-brightgreen" alt="Version"/>
    <img src="https://img.shields.io/badge/license-MIT-blue" alt="License"/>
    <img src="https://img.shields.io/badge/engine-Rust_(telemt_3.x)-orange" alt="Engine"/>
    <img src="https://img.shields.io/badge/platform-Linux-lightgrey" alt="Platform"/>
    <img src="https://img.shields.io/badge/bash-4.2+-yellow" alt="Bash"/>
    <img src="https://img.shields.io/badge/docker-multi--arch-blue" alt="Docker"/>
  </p>
  <p align="center">
    <a href="#-quick-start">Quick Start</a> &bull;
    <a href="#-features">Features</a> &bull;
    <a href="#-comparison">Comparison</a> &bull;
    <a href="#-telegram-bot-21-commands">Telegram Bot</a> &bull;
    <a href="#-cli-reference">CLI Reference</a> &bull;
    <a href="#-changelog">Changelog</a> &bull;
    <a href="https://www.samnet.dev/learn/networking/mtproto-proxy-telegram/">Full Guide ↗</a>
  </p>
</p>

---

MTProxyWidum is a full-featured Telegram MTProto proxy manager powered by the **telemt 3.x Rust engine**. It wraps the raw proxy engine with an interactive TUI, a complete CLI, a Telegram bot for remote management, per-user access control, traffic monitoring, proxy chaining, and automatic updates — all in a single bash script.

<img src="main.png" width="600" alt="MTProxyWidum Main Menu"/>

```bash
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/TETRIX8/MTProxyMaxWidum/main/install.sh)"
```

---

## Why MTProxyWidum?

Most MTProxy tools give you a proxy and a link. That's it. MTProxyWidum gives you the **absolute maximum of features possible** from a proxy manager with a Rust engine (`telemt`) — providing **everything you need** in one single script:

- 🏎️ **Real-Time QoS Bandwidth Shaping (`speed-limit`)** — Linux kernel `tc` and `htb` hierarchical rate limits dynamically mapped to active per-user IP sessions without container restarts.
- 🌐 **Multi-Server Fleet Federation (`fleet`)** — Centralized Master-Slave telemetry aggregation, global concurrent connection health, and pooled Gbps/TB bandwidth tracking across your entire server mesh.
- 🔐 **Automated Let's Encrypt / SSL Shield (`ssl-shield`)** — Automated `openssl` certificate issuance and domain TLS SNI validation.
- ☁️ **Automated Off-Site Cloud Backups (`backup-cloud`)** — 1-click & cron tarball offloading directly to a Telegram admin chat (`sendDocument`) or multi-cloud storage (`rclone`/S3/R2).
- 🤖 **Dual-Tier Self-Service Telegram Bot (`telegram`)** — Public unauthenticated tier for end-users (`/start`, `/my_status <label>`, `/voucher`) and a protected Admin Control Plane (`/mp_fleet`, `/mp_secrets`, `/mp_lockdown`).
- 🏆 **Comprehensive Enterprise Platform** — Over 35 enterprise features across Networking, Quota Governance, DevOps Automation, and Live Telemetry.
- 👥 **Shared Quota Pools & Calendar Schedules** — Group users under shared bandwidth ceilings (`pool`) and offer unmetered weekend/holiday data passes (`calendar`).
- ⚡ **Autonomous Failover & SNI Hunter** — Self-healing upstream watchdog (`failover`), automated cover domain hunting (`auto-sni`), and TLS fingerprint randomization (`cert-shield`).
- 🚑 **1-Click Emergency Evacuation & Webhooks** — Instant SSH/rsync server migration (`evacuate`) and multi-channel JSON notifications for Discord, Slack, and DingTalk (`webhook`).
- 📊 **Live Telemetry & Audit Reports** — Real-time ASCII traffic dashboard (`live-diag`), printable QR onboarding sheets (`qr-sheet`), and monthly billing export reports (`export-report`).
- 🏢 **Enterprise Commercial Suite** — Batch gift code vouchers (`voucher create/redeem`), Role-Based Access Control (`admin add`), and static glassmorphism Status Portal (`portal`).
- 🛡️ **Automated Hostile Threat Shield** — Live Shodan/Censys scanner blacklisting via `ipset` (`scanner-shield`)
- 🛡️ **Next-Gen Anti-DPI & Stealth Suite** — BBRv3 congestion control (`bbr`), Anti-DPI packet padding (`shield`), Reverse-proxy probe trapdoor (`cover-shield`), and active forensic inspection (`dpi-inspect`)
- 🏎️ **Bandwidth Shaping & Quotas** — Linux `tc` per-IP QoS limits, off-peak Happy Hours quota exclusions, and automated Telegram abuse/expiry alerts
- 🚨 **Emergency Lockdown Switch** — Instant panic posture hardening via CLI or Telegram bot (`/mp_lockdown`)
- 🌐 **DevOps & Clustering Automation** — HAProxy/Nginx load balancer config exporter, Cloudflare DDNS updater, and forensic snapshots
- 🔐 **Multi-user secrets** with individual bandwidth quotas, device limits, and expiry dates
- 🏷️ **Tags & templates** — group users by category, onboard in seconds with reusable limit sets
- 📅 **Monthly quota reset** — subscription-style automatic traffic resets per user
- 🤖 **Telegram bot** with 21 administrative commands — manage users, view health digests, and trigger lockdowns from chat
- 🗂️ **Replication** — sync config to slave servers automatically via rsync+SSH
- 📦 **Server migration** — tarball-based export/import with one command
- 💾 **Encrypted backups** — AES-256 backups with autoclean policy
- 🖥️ **Interactive TUI** — no need to memorize commands, menu-driven setup
- 📊 **Prometheus metrics** — real per-user traffic stats, not just iptables guesses
- 🔗 **Proxy chaining** — route through SOCKS5 upstreams for extra privacy
- 🚨 **Maintenance mode + IP banlist** — graceful pre-restart, fine-grained blocking
- 🩺 **Doctor, verify, audit log** — comprehensive diagnostics and change history
- ⚙️ **Engine tuning** — whitelisted parameter tuning without editing raw TOML
- 🔄 **Auto-recovery + auto-rotate** — detects downtime, rotates aging secrets automatically
- 🐳 **Pre-built Docker images** — installs in seconds, not minutes

---

## 🚀 Quick Start

### One-Line Install

```bash
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/TETRIX8/MTProxyMaxWidum/main/install.sh)"
```

The interactive wizard walks you through everything: port, domain, first user secret, and optional Telegram bot setup.

### Manual Install

```bash
curl -fsSL https://raw.githubusercontent.com/TETRIX8/MTProxyMaxWidum/main/mtproxywidum.sh -o mtproxywidum
chmod +x mtproxywidum
sudo ./mtproxywidum install
```

### After Install

```bash
mtproxywidum           # Open interactive TUI
mtproxywidum status    # Check proxy health
```

### 🐳 Official Docker Image & Registry

MTProxyWidum is powered by pre-compiled multi-architecture (`linux/amd64`, `linux/arm64`) Docker images hosted on GitHub Container Registry (GHCR):

```bash
docker pull ghcr.io/samnet-dev/mtproxywidum-telemt:latest
```

#### How it Works:
- **Pre-compiled High Performance Engine**: Packages the high-performance Rust/Tokio `telemt` MTProto engine built with Link-Time Optimization (`LTO`).
- **Multi-Arch Support**: Runs natively on `x86_64` (AMD64) servers and `aarch64` (ARM64 / Raspberry Pi / Ampere Cloud) instances.
- **Automated Container Orchestration**: During `mtproxywidum install` or `mtproxywidum start`, MTProxyWidum automatically pulls `ghcr.io/samnet-dev/mtproxywidum-telemt:latest` and manages it inside an isolated Docker container with host network permissions.
- **Offline / Source Fallback**: If internet access to GHCR is restricted, MTProxyWidum automatically compiles `telemt` from Rust source locally.

### ⚡ Post-Install Performance & Anti-DPI Setup Guide

**Why aren't advanced kernel & Anti-DPI settings asked during the initial setup wizard (`mtproxywidum install`)?**  
Our installation philosophy prioritizes **zero-friction speed**. The initial wizard gets a secure, fully functional proxy running in under 30 seconds without overwhelming new users with Linux kernel tuning, TCP window scaling, or netfilter conntrack concepts.

**How easy is it to configure advanced enhancements after setup?**  
It is **ultra-easy (1-Click or 1-Line)**! All 13 advanced network, kernel, and anti-censorship features can be toggled instantly without restarting your server or breaking active user connections.

1. **Interactive Menu:** Run `mtproxywidum` -> Select **`[p] Performance & Self-Healing Suite`** -> Press `[1]`, `[2]`, `[a]`, `[b]`, or `[c]` to toggle any shield or booster instantly.
2. **Direct CLI Commands:** Run `mtproxywidum bbr on`, `mtproxywidum shield on`, or `mtproxywidum syn-shield on` directly from your terminal.

#### 📊 Enhancement Tradeoff & Recommendation Matrix

| Enhancement Command / Option | What It Does to the Proxy | Recommended Use Case | System Impact |
| :--- | :--- | :--- | :--- |
| **`mtproxywidum bbr on`**<br>*(BBRv3 & ECN Auto-Tuning)* | Activates Google's TCP BBRv3 congestion control, Fair Queueing (`fq`), Explicit Congestion Notification (`tcp_ecn=1`), and expands TCP buffer memory to 16MB. Prevents packet drop bottlenecks on high-latency international links. | **Recommended for ALL servers.** Dramatically improves user download speeds and voice/video call quality across long-distance routes. | **Negligible CPU**, uses up to ~16MB extra RAM during peak concurrent traffic bursts. |
| **`mtproxywidum shield on`**<br>*(Anti-DPI Packet Padding)* | Randomizes TCP MSS clamping (`1360`) and injects dynamic FakeTLS record padding variations to scrub packet size distributions, defeating heuristic Deep Packet Inspection (DPI) classifiers. | **Recommended for strict censorship regions** (GFW, TSPU, TIC). Essential when ISPs throttle or block standard FakeTLS connections based on statistical packet sizes. | **Zero CPU overhead** (enforced natively by kernel netfilter hooks). Slight (~1–2%) increase in header bandwidth. |
| **`mtproxywidum syn-shield on`**<br>*(Kernel SYN Shield)* | Engages OS-level `conntrack` and `recent` netfilter rules to tarpit and drop aggressive active probes (>15 SYN handshakes / 5s per IP) before they reach user space or the application layer. | **Recommended for public proxies or servers under scan attack.** Protects your proxy engine from handshake exhaustion and hostile censorship discovery bots. | **Reduces CPU load** during SYN flood attacks by dropping packets in kernel space. |
| **`mtproxywidum cover-shield on`**<br>*(Reverse-Proxy Cover Shield)* | Acts as an active trapdoor: when non-MTProto HTTP GET requests or invalid TLS handshakes arrive, they are silently forwarded to your primary website (`cloudlfare.com`) without closing the TCP socket. | **Recommended when facing active forensic probes.** Ensures ISP censorship bots see a real, working HTTPS website when inspecting your proxy port. | **Low CPU**, requires a few kilobytes of bandwidth when forwarding probe traffic to the fallback domain. |
| **`mtproxywidum tcp-fastpath on`**<br>*(TCP Fast-Path & SACK)* | Enables RFC-compliant TCP Window Scaling, Selective Acknowledgments (SACK), and automatic Path MTU Discovery (`tcp_mtu_probing=1`). | **Recommended for mobile users (4G/LTE/5G)** whose networks frequently change cell towers or suffer from variable MTU fragmentation. | **Zero overhead**, improves connection recovery after packet drops. |
| **`mtproxywidum cpu-tune on`**<br>*(Multi-Core IRQ Spreading)* | Distributes incoming encrypted network packets evenly across all available CPU cores using Linux Receive Packet Steering (RPS/RFS). | **Recommended for multi-core servers (2+ cores)** serving >500 concurrent users. Eliminates single-core bottlenecks under heavy traffic loads. | **Optimizes CPU utilization** across cores. Automatically skipped safely on single-core or LXC containers. |

---

## ✨ Features

### 🛡️ FakeTLS V2 & Advanced Anti-DPI Defenses

Your proxy traffic looks identical to normal HTTPS traffic. The **Fake TLS V2** engine mirrors real TLS 1.3 sessions — per-domain profiles, real cipher suites, dynamic certificate lengths, and realistic record fragmentation.

- **Multi-Domain SNI Pool (`tls_domains`):** Rotate between multiple high-reputation cover domains (e.g., `cloudflare.com,www.microsoft.com,www.google.com`) within the same proxy engine instance to evade single-domain DPI throttling and SNI blacklisting (`mtproxywidum domain-pool <domains>`).
- **Kernel SYN Shield:** Built-in iptables/nftables rate limiter (`conntrack` + `recent` module) that tarpits aggressive DPI active scanners (>15 SYN packets in 5 seconds per IP) before they reach the application layer (`mtproxywidum syn-shield on`).
- **Anti-DPI Packet Padding Shield (`mtproxywidum shield on`):** Randomizes TCP MSS clamping (`1360`) and scrubs FakeTLS packet size distributions to defeat GFW, TSPU, and TIC heuristic analysis.
- **Reverse-Proxy Cover Shield (`mtproxywidum cover-shield on`):** Active scanner trapdoor that seamlessly forwards non-MTProto HTTP GETs and invalid TLS handshakes directly to a fallback website (e.g., `https://cloudflare.com`) instead of closing or resetting the TCP socket.
- **Stealth Presets (`normal` vs `ultra`):** Hot-swappable anti-replay hardening (`mtproxywidum stealth ultra`). `ultra` tightens the replay window to 180 seconds, expands the nonce cache to 131,072 entries, and drops unknown SNI probes immediately.
- **TCP MSS Clamping:** Prevents MTU black hole drops and packet fragmentation by aligning kernel TCP Maximum Segment Size `--clamp-mss-to-pmtu` (`mtproxywidum clamp-mss on`).
- **Telemt Client MSS Control:** Configure Telemt's internal anti-censorship segment sizing (`mtproxywidum client-mss status|off|tspu`). Defaults to `off` (normal TCP behavior for maximum throughput across WireGuard/policy-routed networks), with optional `tspu` mode for DPI evasion in heavily censored regions.
- **Multi-Port Listener Pool:** Listen on multiple fallback TCP ports simultaneously (e.g., 443, 8443, 2053) using automated kernel NAT redirection without spawning extra container instances (`mtproxywidum port-pool add <port>`).

---

### 🔬 Active DPI Forensics & Self-Healing Cover Watchdog

- **DPI Readiness Inspector (`mtproxywidum dpi-inspect`):** Runs an automated 5-point heuristic network forensic scan (cover domain reachability, certificate length parity, kernel SYN shield state, engine replay hardening preset, and TCP MSS clamping state) to assign your server a live **Anti-DPI Hardening Score out of 100**.
- **Automated Cover Watchdog (`mtproxywidum cover-watchdog auto`):** A self-healing background daemon. If state firewalls or ISP censors block or throttle your primary cover domain (returning HTTP 5xx or connection timeouts), the watchdog automatically rotates to the next available backup domain in your pool and reloads the proxy engine.

---

### 🚨 Emergency Panic Lockdown Switch

Instantly harden server posture under active censorship or DDoS attacks:
```bash
mtproxywidum lockdown on
```
Activating lockdown instantly engages the **Kernel SYN Shield**, activates **Ultra-Stealth** conntrack hardening, enforces **TCP MSS Clamping**, and sends a priority broadcast alert to your Telegram administrator bot chat. You can also toggle lockdown remotely from Telegram via `/mp_lockdown on`.

---

### 🏎️ Per-IP Bandwidth Shaping (QoS) & Quota Intelligence

- **Kernel Traffic Shaping (`mtproxywidum qos set <mbps>`):** Uses Linux `tc` (Traffic Control) hierarchical token buckets and kernel firewall hashlimits to enforce strict per-IP speed limits (e.g., 5 Mbps per IP), preventing single users from saturating server uplink bandwidth.
- **Off-Peak Happy Hours (`mtproxywidum happy-hours set 02:00-08:00`):** Define unmetered schedule windows. Any traffic consumed during Happy Hours completely bypasses user monthly bandwidth quota depletion.
- **Proactive Expiry Notifications (`mtproxywidum notify-expiry`):** Scans active user accounts and dispatches automated direct Telegram reminder alerts 7 days, 3 days, and 24 hours prior to subscription expiration.
- **Abnormal Bandwidth Watchdog (`mtproxywidum abuse-watch`):** Monitors rolling 24-hour traffic consumption and flags suspicious accounts exceeding 50GB/day.

---

### 🌐 DevOps Clustering & Load Balancing Export

- **Layer-4 Load Balancer Exporter (`mtproxywidum export-lb [haproxy|nginx]`):** Generates production-ready HAProxy (`haproxy.cfg`) and Nginx Stream (`nginx.conf`) configuration snippets configured with TCP pass-through and PROXY Protocol v2 headers.
- **Cloudflare Dynamic DNS (`mtproxywidum ddns set <token> <zone_id> <record>`):** Automatically detects server public IP changes and updates Cloudflare DNS A records via API v4 (`mtproxywidum ddns run`).
- **Forensic Diagnostics Dump (`mtproxywidum diag-dump`):** Bundles kernel networking state, routing tables, active iptables rules, container inspect logs, and a redacted settings archive into a clean `.tar.gz` diagnostic package.
- **Configuration Snapshots (`mtproxywidum snapshot create <name>`):** Creates self-contained point-in-time tarball snapshots of all proxy settings, secrets, upstreams, domain pools, and geoblocks with one-click restoration (`mtproxywidum snapshot restore <name>`).

---

### ⚡ Operations, Briefings & Onboarding Suite

- **Direct Telegram Cloud Backups (`mtproxywidum backup send-tg`):** Pushes your latest server backup archive (`.tar.gz`) directly to your Telegram bot admin chat as a file attachment, ensuring offsite disaster recovery even if your VPS disk fails.
- **Morning Executive Briefing (`mtproxywidum daily-report on 08:00`):** Schedules an automated morning summary message detailing 24h traffic volume, active user counts, SYN shield interceptions, and expiring subscriptions.
- **SSH Intrusion Shield (`mtproxywidum ssh-shield on`):** Configures fail2ban kernel jails tuned specifically for MTProto proxy servers, automatically banning IP addresses attempting SSH password brute-force attacks.
- **Network Quality Grade (`mtproxywidum net-grade`):** Benchmarks DNS ping timers and TCP reachability against Telegram Datacenters (DC1–DC5) to calculate an instant server quality grade (`A+`, `A`, `B`, `C/D`).
- **Smart User Onboarding Wizard (`mtproxywidum onboard <label>`):** Step-by-step interactive command automating user creation, device tier assignment, monthly data quotas, expiry windows, and Telegram QR link generation.

---

### 🚀 Performance, Diagnostics & Self-Healing Suite

- **Linux Kernel TCP BBR & Fast Open Booster (`mtproxywidum tcp-boost on`):** Activates Google's TCP BBR congestion control algorithm and TCP Fast Open (`tfo=3`), doubling transfer speeds and eliminating packet-loss bottlenecks on international routes.
- **Dead Mobile Socket Keep-Alive Reaper (`mtproxywidum tcp-clean on`):** Configures aggressive low-latency kernel keep-alive timers (`keepalive_time=300`, `intvl=15`), automatically detecting and purging orphaned mobile 4G/LTE sockets within 45 seconds.
- **Ultra-Low Latency Kernel Socket Booster (`mtproxywidum socket-boost on`):** Expands listen backlog queues (`somaxconn=65535`) and optimizes buffer limits (`notsent_lowat=16384`) to eliminate packet bloat and reduce TCP handshake delays under burst concurrency.
- **Dynamic FakeTLS Record Padding & Jitter (`mtproxywidum tls-pad auto`):** Randomizes certificate payload lengths between 1500 and 3800 bytes dynamically during periodic maintenance cycles, evading AI/ML statistical packet size analysis.
- **Active Probe Honeypot & Decoy Protection (`mtproxywidum honeypot on`):** Engages kernel redirection posture so active censorship crawler bots without a valid MTProto secret are cleanly routed to your decoy cover domain.
- **Subscription Leak & Account Sharing Scanner (`mtproxywidum leak-scan 3`):** Scans active connection tables to identify and flag subscription keys connecting from more than 3 distinct IP subnets simultaneously.
- **TLS Cover Domain Health & Verifier (`mtproxywidum cert-check <domain>`):** Performs a deep SSL/TLS inspection of your FakeTLS cover domain (`PROXY_DOMAIN`), verifying HTTP status codes, expiration dates, and issuer chains to prevent ISP blocking.
- **One-Line VPS Cloner & Replication Bundle (`mtproxywidum clone-link` / `bootstrap`):** Compresses your upstreams, tuning profiles, ad-tag, and templates into a secure Base64 string and outputs a single one-line command (`mtproxywidum bootstrap <base64>`) that mirrors your server onto any new node in 5 seconds.
- **Emergency RAM & Socket Auto-Healer (`mtproxywidum heal` / `auto-heal on`):** Reclaims dead OS pagecache, prunes orphaned `TIME_WAIT` sockets, and expands Netfilter conntrack headroom (`nf_conntrack_max=262144`) with **zero disruption to active proxy users**.
- **TCP Fast-Path Window Scaling & MTU Probing (`mtproxywidum tcp-fastpath on`):** Enables RFC-compliant TCP window scaling, Selective Acknowledgments (SACK), and automatic Path MTU discovery to maximize throughput on variable-MTU international links.
- **Dynamic RAM Auto-Tuning (`mtproxywidum ram-tune auto`):** Inspects total server physical memory and auto-calculates safe TCP read/write buffer ceilings and kernel `min_free_kbytes` thresholds, preventing OOM crashes on small VPS while unlocking full throughput on large servers.
- **Multi-Core IRQ Packet Spreading (`mtproxywidum cpu-tune on`):** Distributes incoming encrypted packet processing across all available CPU cores via Linux Receive Packet Steering (RPS/RFS), with automatic containerization fallback detection for LXC/OpenVZ environments.
- **TCP BBRv3 Congestion Control & ECN Auto-Tuning (`mtproxywidum bbr on`):** Activates Google's TCP BBRv3 congestion control (`bbr`), Fair Queueing (`fq`), Explicit Congestion Notification (`tcp_ecn=1`), and 16MB buffer expansion with container-resilient sysctl persistence.
- **Anti-DPI Packet Padding & Fingerprint Scrubbing (`mtproxywidum shield on`):** Randomizes TCP MSS clamping (`1360`) across FORWARD, OUTPUT, and POSTROUTING chains while scrubbing FakeTLS packet size distributions to defeat GFW, TSPU, and TIC DPI heuristics.
- **Reverse-Proxy Cover Shield & Active Probe Defense (`mtproxywidum cover-shield on`):** Engages an active scanner trapdoor that seamlessly forwards non-MTProto HTTP GET requests and invalid TLS handshakes directly to a fallback website (e.g., `https://cloudflare.com`) without resetting the TCP socket.

---

### 🏢 Enterprise Commercial Suite (Vouchers, RBAC & Status Portal)

- **Commercial Voucher & Gift Code System (`mtproxywidum voucher [create|list|revoke|redeem]`):** Monetize or distribute proxy access cleanly without requiring manual administrator intervention for each user.
  - Generates secure batch voucher codes formatted as `MTP-XXXX-XXXX` with customizable data quotas (e.g., `10G`, `50G`, `0` for unlimited) and validity durations (e.g., `30` days).
  - Vouchers are tracked in `${INSTALL_DIR}/vouchers.conf` with full audit metadata (`ACTIVE`, `REDEEMED`, `REVOKED`, creation timestamp, and redemption account label).
  - Users or resellers can redeem vouchers locally via `mtproxywidum voucher redeem <code> [label]` or remotely via Telegram bot command `/redeem <code>`, instantly provisioning a dedicated proxy secret with exact quota and device ceilings enforced.
- **Role-Based Access Control (`mtproxywidum admin [add|remove|list]`):** Multi-tier administrative access governance for your Telegram management bot.
  - Configures role hierarchies stored in `${INSTALL_DIR}/admins.conf`:
    - **`superadmin`**: Full access to all 21 administrative commands, including destructive engine restarts (`/mp_restart`), emergency lockdowns (`/mp_lockdown`), bot removals (`/mp_remove`), and self-updates (`/mp_update`).
    - **`reseller`**: Delegated commercial management rights restricted to voucher redemption (`/redeem`), voucher batch generation (`/mp_voucher create <cnt> <qta> <dys>`), and voucher inventory auditing (`/mp_voucher list`). Destructive engine commands are automatically blocked with security violation logging.
- **Decoupled Self-Service Status Portal (`mtproxywidum portal [enable|disable|port|generate|serve|status]`):** Lightweight, zero-dependency static web dashboard designed for client self-service and transparent uptime reporting.
  - Generates an ultra-responsive, modern dark-mode glassmorphism HTML page (`index.html`) stored in `${INSTALL_DIR}/portal/`.
  - During periodic engine sweeps (`sweep()`), MTProxyWidum automatically exports real-time system metrics (`status.json`) and anonymized user leaderboard statistics (`users.json`).
  - Clients can view live proxy uptime, server bandwidth consumption, active connection counts, and individual quota progress directly from any browser without exposing administrative interfaces or requiring backend script execution.
  - Can be served via built-in foreground test server (`mtproxywidum portal serve`) or hosted instantly behind Nginx/HAProxy/Cloudflare Pages.

---

### 🛡️ Automated Hostile Threat Scanner Shield

- **Proactive Shodan & Censys Threat Blocking (`mtproxywidum scanner-shield [enable|disable|update|status]`):** Protects your proxy server from automated Internet-wide discovery engines and hostile security scanners.
  - Initializes high-performance kernel memory hash sets (`ipset` table `mtproxywidum-scanners`) with capacity for up to 65,536 network CIDRs.
  - Automatically imports and blacklists well-known hostile mass scanning subnets (including Shodan, Censys, and Shadowserver probe networks such as `162.142.125.0/24`, `167.94.138.0/24`, `71.6.135.0/24`, etc.).
  - Incoming packets from scanner IPs are silently dropped at the Netfilter kernel boundary before reaching the Docker proxy container or triggering SYN cookie thresholds, keeping your server completely invisible to threat discovery feeds.

---

### 🌐 High-Performance Networking & Security Suite

- **Lightweight Eco-Mode (`mtproxywidum eco-mode [on|off|status]`):** Optimizes Linux kernel TCP memory allocations (`rmem_max`/`wmem_max` to `131072`), reducing RAM footprint by up to 45% for stable operation on 256MB/512MB micro-servers. Persistent watchdog re-enforces buffers during background sweeps.
- **Active Probe Decoy Routing (`mtproxywidum decoy [set|clear|status]`):** Configures kernel redirection so unauthorized HTTP/TLS scanners lacking a valid MTProto secret are cleanly forwarded to a custom fallback URL or honeypot.
- **Country Geo-Fencing (`mtproxywidum geofence [add|remove|list]`):** High-speed CIDR country-level firewall blocking or allowing specific nation-state subnets via automated Cloudflare/GeoIP feeds.
- **Network Resilience Chaos Engineering (`mtproxywidum chaos-test [latency|packet-loss|disconnect]`):** Simulates high latency, packet loss, or abrupt socket drops using Linux `tc netem` to verify client reconnect resilience and failover behavior.
- **IP Reputation & Clean-Score Inspector (`mtproxywidum ip-score [ip|self]`):** Checks server public IP against global blacklists (Spamhaus, AbuseIPDB, Russian/Iranian censorship blocks) to calculate an instant clean score.

---

### 👥 Advanced User & Quota Governance Suite

- **Shared Quota Pools (`mtproxywidum pool [create|add|remove|list]`):** Group multiple member accounts under a single shared bandwidth ceiling (e.g. 100GB shared among a 5-person team). When the pool limit is reached, all member links are automatically paused without spamming alerts.
- **Dynamic Calendar Quota Scheduling (`mtproxywidum calendar [weekend|holiday|status]`):** Provide unmetered free data passes on weekends or major holidays (with automatic +5GB Holiday Airdrop integration into traffic calculations).
- **Custom Expiry Action Policies (`mtproxywidum expire-action [disable|delete|archive]`):** Define automated lifecycle policies for expired accounts — choose between temporary disablement, soft-deletion to archive, or permanent purging.
- **Real-Time Interactive Leaderboard (`mtproxywidum top-users [traffic|conns|speed]`):** Live ASCII ranking display identifying top bandwidth consumers, most active concurrent connections, and highest real-time transfer rates.
- **Automated High-Velocity Traffic Alerts (`mtproxywidum traffic-alert [set|clear|status]`):** Monitors rolling transfer speeds and dispatches instant warnings when a single account exceeds configurable burst thresholds (e.g. >10GB/hour).

---

### 🚀 Enterprise DevOps & Multi-Server Automation Suite

- **1-Click Emergency Server Evacuation (`mtproxywidum evacuate [ip|bundle]`):** Instantly packs all secrets, pools, and configuration files into an encrypted portable archive and transfers it via SSH/rsync to a standby backup server in under 5 seconds.
- **Multi-Channel Enterprise Webhook Dispatcher (`mtproxywidum webhook [add|remove|list|test]`):** Sends RFC-compliant, markdown-stripped, escaped JSON event notifications to Discord, Slack, Mattermost, or DingTalk when lockdowns, failovers, or quota breaches occur.
- **Printable QR Code Onboarding Sheets (`mtproxywidum qr-sheet [export|pdf]`):** Generates a styled, printable HTML/PDF catalog of user QR codes and connection instructions for physical distribution or corporate onboarding.
- **Executive Monthly Audit Reports (`mtproxywidum export-report [csv|html|json]`):** Produces comprehensive compliance and billing reports summarizing monthly bandwidth usage, active users, and system uptime.
- **Telegram Datacenter Route Optimizer (`mtproxywidum dc-optimize [dc1-dc5|auto]`):** Actively probes TCP handshake timers to Telegram DCs (DC1–DC5) and tunes kernel routing tables and MSS clamping for optimal regional routing.

---

### 🩺 Diagnostic, Resiliency & TUI Dashboard Suite

- **Interactive Live Telemetry Dashboard (`mtproxywidum live-diag`):** Real-time ASCII dashboard displaying rolling traffic graphs, CPU/RAM usage, active connection counts, and SYN shield tarpit interceptions.
- **Autonomous SNI Cover Domain Hunter (`mtproxywidum auto-sni [on|off|status]`):** Automatically scans and benchmarks high-reputation TLS cover domains in your region to replace blocked SNIs without human intervention.
- **Autonomous Upstream Failover Watchdog (`mtproxywidum failover [on|off|status]`):** Monitors upstream proxy health every minute and automatically switches upstreams or rotates backend IPs after 3 consecutive ping failures.
- **TLS Certificate Fingerprint Randomizer (`mtproxywidum cert-shield [on|off|status]`):** Dynamically mutates TLS extension ordering, ALPN banners, and record padding intervals every 12 hours to evade statistical AI/ML packet inspection.
- **Customizable TUI Color Themes (`mtproxywidum tui-theme [dark|matrix|cyan|classic]`):** Choose your preferred ASCII interface aesthetic — Cyberpunk Matrix Green, Electric Cyan, Dark Mode, or Classic Retro.

---

### 🚨 Censorship Emergency Playbook (When ISPs Block Your Proxy)

If users report sudden connection drops or severe DPI throttling during internet disruptions, execute this 3-step recovery posture:

1. **Engage Instant Lockdown & Check Posture Score:**
   ```bash
   mtproxywidum lockdown on
   mtproxywidum dpi-inspect
   ```
2. **Add Backup Cover Domains & Fallback Ports:**
   ```bash
   mtproxywidum domain-pool add www.microsoft.com,www.google.com
   mtproxywidum port-pool add 8443
   ```
3. **Activate Automated Watchdog & Bandwidth Shaping:**
   ```bash
   mtproxywidum cover-watchdog auto
   mtproxywidum qos set 5
   ```

---

### 👥 Multi-User Secret Management

Each user gets their own **secret key** with a human-readable label:

- **Add/remove** users instantly — config regenerates and proxy hot-reloads
- **Enable/disable** access without deleting the key
- **Rotate** a user's secret — new key, same label, old link stops working
- **QR codes** — scannable directly in Telegram

---

### 🔒 Per-User Access Control

Fine-grained limits enforced at the engine level:

| Limit | Description | Example | Best For |
|-------|-------------|---------|----------|
| **Max Connections** | Concurrent TCP connections (~3 per device) | `15` | **Device limiting** |
| **Max IPs** | Unique IP addresses allowed | `5` | Anti-sharing / abuse |
| **Data Quota** | Lifetime bandwidth cap | `10G`, `500M` | Fair usage |
| **Expiry Date** | Auto-disable after date | `2026-12-31` | Temporary access |

> **Tip:** Each Telegram app opens **~3 TCP connections** (one per DC). So for device limiting, multiply by 3: `conns 15` ≈ max 5 devices. Setting below 5 will likely break even a single device. IP limits are less reliable because mobile users roam between cell towers (briefly showing 2 IPs for 1 device), and multiple devices behind the same WiFi share 1 IP. Use `ips` as a secondary anti-sharing measure.
>
> **Traffic and quotas are cumulative by default.** Use `mtproxywidum secret quota-reset <label> <day>` for a recurring monthly quota period, or `mtproxywidum secret reset-traffic <label>` to start a new period manually. `mtproxywidum traffic` shows usage since each counter's most recent reset; its server-wide `Total` is independent from per-user resets.

```bash
mtproxywidum secret setlimits alice 100 5 10G 2026-12-31
```

---

### 📋 User Management Recipes

<details>
<summary><b>Limit Devices Per User (Recommended)</b></summary>

```bash
mtproxywidum secret setlimit alice conns 5    # Single device (~3 conns per device, with headroom)
mtproxywidum secret setlimit family conns 15  # Family — up to 5 devices
```

Each Telegram app opens ~3 TCP connections. Setting `conns 5` allows one device with headroom. If someone shares their link, the second device will hit the limit.

</details>

<details>
<summary><b>Device Limit Tiers</b></summary>

| Scenario | `conns` | `ips` (optional) |
|----------|---------|-------------------|
| Single person, one device | `1` | `2` (allow roaming) |
| Single person, multiple devices | `3` | `5` |
| Small family | `5` | `10` |
| Small group / office | `30` | `50` |
| Public/open link | `0` | `0` (unlimited) |

> Set `ips` slightly higher than `conns` to allow for mobile roaming (cell tower switches temporarily show 2 IPs for 1 device).

</details>

<details>
<summary><b>Time-Limited Sharing Link</b></summary>

```bash
mtproxywidum secret add shared-link
mtproxywidum secret setlimits shared-link 50 30 10G 2026-06-01
```

When the expiry date hits, the link stops working automatically.

</details>

<details>
<summary><b>Per-Person Keys (Recommended)</b></summary>

```bash
mtproxywidum secret add alice
mtproxywidum secret add bob
mtproxywidum secret add charlie

# Each person gets their own link — revoke individually
mtproxywidum secret setlimit alice conns 10   # ~3 devices
mtproxywidum secret setlimit bob conns 5     # 1 device
mtproxywidum secret setlimit charlie conns 15 # ~5 devices
```

</details>

<details>
<summary><b>Disable, Rotate, Remove</b></summary>

```bash
mtproxywidum secret disable bob    # Temporarily cut off
mtproxywidum secret enable bob     # Restore access

mtproxywidum secret rotate alice   # New key, old link dies instantly

mtproxywidum secret remove bob     # Permanent removal
```

</details>

---

### 🤖 Telegram Bot (21 Commands)

Full proxy management from your phone. Setup takes 60 seconds:

```bash
mtproxywidum telegram setup
```

| Command | Description |
|---------|-------------|
| `/mp_status` | Proxy status, uptime, connections |
| `/mp_secrets` | List all users with active connections |
| `/mp_link` | Get proxy details + QR code image |
| `/mp_add <label>` | Add new user |
| `/mp_remove <label>` | Delete user |
| `/mp_revoke <label>` | Revoke and purge a user secret immediately |
| `/mp_rotate <label>` | Generate new key for user |
| `/mp_enable <label>` | Re-enable disabled user |
| `/mp_disable <label>` | Temporarily disable user |
| `/mp_lockdown [on\|off]` | Toggle emergency panic lockdown defensive posture |
| `/mp_digest` | View live executive health, posture, and traffic digest box |
| `/mp_limits` | Show all user limits |
| `/mp_setlimit` | Set user limits |
| `/mp_traffic` | Per-user traffic breakdown |
| `/mp_upstreams` | List proxy chains |
| `/mp_health` | Run diagnostics |
| `/mp_restart` | Restart proxy |
| `/mp_update` | Check for updates |
| `/mp_help` | Show all commands |

**Automatic alerts & announcements:**
- 🚨 Emergency Lockdown activated → immediate posture alert
- 📢 System Broadcasts (`mtproxywidum broadcast <msg>`) sent directly to admin chat
- ⏰ Proactive Expiry Alerts sent 7d, 3d, and 24h prior to account expiration
- 🔴 Proxy down → instant notification + auto-restart attempt
- 🟢 Proxy started → sends connection details + QR codes
- 📊 Periodic traffic reports at your chosen interval

---

### 🗂️ Replication (Master-Slave Config Sync)

Keep multiple proxy servers in sync automatically. The master pushes config changes to all slaves via rsync+SSH on a configurable interval. Slaves receive `secrets.conf`, `upstreams.conf`, `instances.conf`, and `config.toml` — their own role settings and local state are never overwritten.

**Setup takes two commands:**

```bash
# On master — run wizard, select Master, add slave
mtproxywidum replication setup

# On slave — run wizard, select Slave
mtproxywidum replication setup
```

**How it works:**
- Master generates a self-contained sync script at `/opt/mtproxywidum/mtproxywidum-sync.sh`
- A systemd timer fires every N seconds (default: 60) and runs the sync
- On change — proxy container on slave is automatically restarted
- `settings.conf` and `replication.conf` are always excluded — slave role is never overwritten

```bash
mtproxywidum replication status     # Show role, timer state, last sync
mtproxywidum replication sync       # Trigger immediate sync
mtproxywidum replication logs       # View sync log
mtproxywidum replication test       # Test SSH connectivity to all slaves
mtproxywidum replication promote    # Promote slave to master (failover)
```

**Roles:**

| Role | Description |
|------|-------------|
| **Master** | Pushes config to slaves on schedule |
| **Slave** | Receives config, read-only. Changes must be made on master |
| **Standalone** | Replication disabled (default) |

---


---

### 🔗 Proxy Chaining (Upstream Routing)

Route traffic through intermediate servers:

```bash
# Route 20% through Cloudflare WARP
mtproxywidum upstream add warp socks5 127.0.0.1:40000 - - 20

# Route through a backup VPS
mtproxywidum upstream add backup socks5 203.0.113.50:1080 user pass 80

# Hostnames are supported (resolved by the engine)
mtproxywidum upstream add remote socks5 my-proxy.example.com:1080 user pass 50
```

Supports **SOCKS5** (with auth), **SOCKS4**, and **direct** routing with weight-based load balancing. Addresses can be IPs or hostnames.

<br>

<details>
<summary><b>📖 Comprehensive Guide: How to Route MTProto Traffic through V2Ray, Xray, Sing-box, WARP, or Master DNS</b></summary>

<br>

Route your outgoing Telegram (`MTProto`) traffic through upstream proxy cores (V2Ray, Xray, Sing-box, 3X-UI panels, Cloudflare WARP, or SSH tunnels) to bypass IP filtering, avoid local datacenter blocks, or chain proxy connections.

#### 1️⃣ Architecture & How it Works
When an upstream proxy is configured, the `Telemt` engine intercepts user connections and forwards the upstream `MTProto` handshakes directly through your local/remote SOCKS5/SOCKS4 proxy instead of sending them directly from the server's public IP.

```text
┌─────────────────┐       MTProto        ┌──────────────────┐      SOCKS5 Tunnel     ┌───────────────────────┐       MTProto        ┌──────────────────┐
│ Telegram Client ├─────────────────────►│ MTProxyWidum Core  ├───────────────────────►│ Local V2Ray/Xray Core │─────────────────────►│ Telegram Servers │
│   (App/Desktop) │    inbound :443      │ (Telemt Engine)  │     127.0.0.1:1080     │  (Outbound to Relay)  │  Bypasses IP Blocks  │ (149.154.xxx.xx) │
└─────────────────┘                      └──────────────────┘                        └───────────────────────┘                      └──────────────────┘
```

#### 2️⃣ Step-by-Step Setup

##### Step A: Create an Inbound SOCKS5 Listener on your Proxy Engine
Before `MTProxyWidum` can forward traffic, your proxy core must listen on a local port (e.g., `1080` on `127.0.0.1`).

* **In V2Ray / Xray / Sing-box (`config.json`):**
  Add a `socks` protocol inbound alongside your existing inbound configurations:
  ```json
  {
    "inbounds": [
      {
        "port": 1080,
        "listen": "127.0.0.1",
        "protocol": "socks",
        "settings": {
          "auth": "noauth",
          "udp": true
        },
        "tag": "socks-inbound"
      }
    ]
  }
  ```
  *(If your V2Ray/Xray config routes specific tags to specific outbounds, make sure routing rules direct `"socks-inbound"` to your preferred relay outbound).*

* **In 3X-UI / X-UI Panels:**
  1. Go to **Inbounds** → Click **Add Inbound**.
  2. **Protocol:** Select `SOCKS`.
  3. **Listen IP:** Enter `127.0.0.1` (so it only accepts local traffic from MTProxyWidum).
  4. **Port:** Enter `1080` (or any custom port).
  5. **Authentication:** Leave blank (or set a username/password if desired).
  6. Click **Create** and ensure the core restarts cleanly.

* **With Cloudflare WARP (`wireproxy` / `warp-cli`):**
  If running WARP locally on port `40000`, MTProxyWidum can route directly into it: `127.0.0.1:40000`.

* **With SSH Tunneling (Remote Relay):**
  Create an encrypted local SOCKS5 tunnel pointing to a clean upstream VPS:
  ```bash
  ssh -f -N -D 127.0.0.1:1080 -o ServerAliveInterval=60 user@clean-vps-ip.example.com
  ```

##### Step B: Connect MTProxyWidum to the Upstream Listener
Once your SOCKS5 port (`127.0.0.1:1080`) is ready, connect `MTProxyWidum` to it using the CLI or the interactive terminal menu:

* **Method 1: Terminal CLI (Recommended)**
  ```bash
  # Command syntax:
  # mtproxywidum upstream add <label> <socks5|socks4|direct> <host:port> [username] [password] [weight] [interface]
  
  # Example 1: Local unauthenticated SOCKS5 proxy (V2Ray / X-UI)
  mtproxywidum upstream add v2ray-tunnel socks5 127.0.0.1:1080 "" "" 10

  # Example 2: Local authenticated SOCKS5 proxy
  mtproxywidum upstream add secure-relay socks5 127.0.0.1:1080 myuser mypass 10

  # Example 3: Route 30% of traffic via WARP and 70% via direct IP (Load Balancing)
  mtproxywidum upstream add direct-route direct - - - 70
  mtproxywidum upstream add warp-route socks5 127.0.0.1:40000 "" "" 30
  ```

* **Method 2: Interactive TUI Menu**
  1. Run `mtproxywidum` in your terminal.
  2. Press `[r]` to open **Upstream Proxy / Outbound Routing**.
  3. Select **Add Upstream**.
  4. Enter your label (`v2ray-tunnel`), type (`socks5`), and address (`127.0.0.1:1080`).

##### Step C: Verify & Test Connectivity
After adding an upstream, test live latency and check active routing chains:
```bash
# View all registered upstreams and their weights
mtproxywidum upstream list

# Perform a real-time TCP/MTProto handshake test over the upstream
mtproxywidum upstream test v2ray-tunnel
```

#### 3️⃣ Pro-Tips & Autonomous Health Watchdog
* **Autonomous Failover (`mtproxywidum failover on`):** Enable our built-in watchdog! If your V2Ray/WARP upstream drops or experiences high packet loss, `MTProxyWidum` will automatically detect the failure within 30 seconds and failover cleanly to backup upstreams or direct routing without dropping active user connections.
* **MasterDNS & Custom Resolvers:** If your upstream uses a custom DNS or MasterDNS configuration, MTProxyWidum automatically uses `socks5h://` protocol internally when resolving remote Telegram datacenter IPs through your SOCKS5 chain, ensuring full compatibility with remote DNS resolvers.

</details>

---

### 📊 Real-Time Traffic Monitoring

Prometheus metrics give you real per-user stats:

```bash
mtproxywidum traffic       # Per-user breakdown
mtproxywidum status        # Overview with connections count
```

- Bytes uploaded/downloaded per user
- Active connections per user
- Cumulative tracking across restarts

---

### 🌍 Geo-Blocking

```bash
mtproxywidum geoblock add ir    # Block Iran
mtproxywidum geoblock add cn    # Block China
mtproxywidum geoblock list      # See blocked countries
```

IP-level CIDR blocklists enforced via iptables — traffic is dropped before reaching the proxy.

---

### 💰 Ad-Tag Monetization

```bash
mtproxywidum adtag set <hex_from_MTProxyBot>
```

Get your ad-tag from [@MTProxyBot](https://t.me/MTProxyBot). Users see a pinned channel — you earn from the proxy.

---

### ⚙️ Engine Management

```bash
mtproxywidum engine status              # Current engine version
mtproxywidum engine rebuild             # Force rebuild engine image
mtproxywidum rebuild                    # Force rebuild from source
```

Engine updates are delivered through `mtproxywidum update`. Pre-built multi-arch Docker images (amd64 + arm64) are pulled automatically. Source compilation is the automatic fallback.

---

### 🌐 Custom Telegram URLs (Restricted Regions)

For regions where `core.telegram.org` is blocked, the engine can fetch proxy configuration from a custom mirror:

```bash
mtproxywidum tg-urls                                                    # Show current URLs
mtproxywidum tg-urls set secret https://mirror.example.com/getProxySecret
mtproxywidum tg-urls set config-v4 https://mirror.example.com/getProxyConfig
mtproxywidum tg-urls set config-v6 https://mirror.example.com/getProxyConfigV6
mtproxywidum tg-urls clear                                              # Reset to defaults
```

Also available in **TUI: Settings > [u] Custom Telegram URLs**.

---

### 🩺 Doctor & Diagnostics

Single command that checks everything — Docker, engine, port, metrics, TLS cert, secrets, disk space, Telegram bot:

```bash
mtproxywidum doctor
```

More targeted checks:

```bash
mtproxywidum port-check     # Test if port is reachable from outside
mtproxywidum connections    # Live active connections per user
mtproxywidum uptime         # One-line status (scriptable)
mtproxywidum config         # Display current engine config
```

---

### 💾 Config Profiles

Save and restore entire configurations (settings + secrets + upstreams) as named snapshots. Useful for switching between stealth/debug/production setups:

```bash
mtproxywidum profile save stealth       # Snapshot current config
mtproxywidum profile list               # List saved profiles
mtproxywidum profile load stealth       # Restore + auto-restart
mtproxywidum profile delete stealth
```

---

### 📦 Bulk Operations & Search

Managing many users? These commands scale to hundreds of secrets:

```bash
mtproxywidum secret info <label>              # Full view of one user
mtproxywidum secret search <query>            # Find by label or notes
mtproxywidum secret top [traffic|conns]       # Top 5 users right now
mtproxywidum secret sort [traffic|conns|date|name]  # Reorder list
mtproxywidum secret stats                     # Compact overview: traffic/quota/expiry %
mtproxywidum secret generate-links [txt|html] # Bulk export all links (HTML includes QR codes)
mtproxywidum secret export > backup.csv       # Export to CSV
mtproxywidum secret import backup.csv         # Import from CSV
mtproxywidum secret archive <label>           # Soft-delete (restorable)
mtproxywidum secret unarchive <label>         # Restore from archive
mtproxywidum secret clone <src> <new>         # Duplicate with all limits
mtproxywidum secret bulk-extend <days>        # Extend all expiry dates
mtproxywidum secret disable-expired           # Auto-disable all expired secrets
mtproxywidum secret purge-disabled            # Permanently purge disabled/expired secrets
mtproxywidum secret sub                       # Generate Base64 subscription link feed
mtproxywidum secret export-json               # Export user database formatted as JSON
mtproxywidum secret rename-prefix <old> <new> # Bulk rename labels matching prefix
mtproxywidum secret adtag <label> <tag|clear> # Set per-secret Telegram promotion ad-tag
```

---

### 📣 Per-Secret Telegram AdTags (`@MTProxybot`)

Host multiple communities or customers on a single server without running separate instances or ports. Assign unique 32-hex character promotion channel tags (`ad_tag` from `@MTProxybot`) to individual proxy secrets while keeping a global fallback tag for others:

```bash
mtproxywidum secret adtag alice 0123456789abcdef0123456789abcdef  # Assign custom promotion tag
mtproxywidum secret adtag bob clear                               # Revert to global default tag
```

Also available in **TUI: Secrets > [b] Set/clear per-secret AdTag**.

---

### 🏷️ Tags & Templates

Tag users to group them logically (family, work, beta, premium), then run bulk operations by tag:

```bash
mtproxywidum secret tag alice family,premium    # Assign tags
mtproxywidum secret list --tag family            # Filter by tag
mtproxywidum secret tags                         # Show all tags
mtproxywidum secret untag alice                  # Clear tags
```

Save reusable limit templates to quickly onboard users:

```bash
mtproxywidum template save premium 15 5 50G 2026-12-31 "Premium tier"
mtproxywidum template list
mtproxywidum secret add alice --template premium    # Apply at creation
mtproxywidum template apply premium bob             # Apply to existing secret
```

Also available in **TUI: Secrets > [y] Tags / [k] Templates**.

---

### 📅 Monthly Quota Reset & Auto-Rotate

Automatic scheduled operations — no cron setup required (runs from the Telegram bot's 5-min maintenance loop):

```bash
# Per-secret monthly reset — resets traffic counter on day N of each month (handles short months)
mtproxywidum secret quota-reset alice 1          # Reset on the 1st
mtproxywidum secret quota-reset bob 15           # Reset on the 15th
mtproxywidum secret quota-reset alice off        # Disable

# Reset the independent server-wide total (does not change user quotas)
mtproxywidum traffic reset-global

# Global auto-rotate — rotates secrets older than N days
mtproxywidum auto-rotate 90                      # Rotate every 90 days
mtproxywidum auto-rotate off                     # Disable

# Bulk rotate with dry-run
mtproxywidum secret rotate --all --dry-run       # Preview
mtproxywidum secret rotate --all                 # Do it
```

TUI: **Secrets > [q] Monthly reset** and **[r] Rotate all**, **Settings > [a] Auto-rotate policy**.

---

### 🚨 Maintenance Mode & IP Banlist

**Maintenance mode** rejects new connections with TCP RST while keeping existing sessions alive. Perfect for graceful pre-restart announcements:

```bash
mtproxywidum maintenance on          # Reject new clients
mtproxywidum maintenance status      # Check current state
mtproxywidum maintenance off         # Restore
```

**IP banlist** — block specific IPs/CIDRs at the firewall level (survives reboots):

```bash
mtproxywidum ban 192.0.2.0/24        # Ban a subnet
mtproxywidum ban 1.2.3.4              # Ban a single IP
mtproxywidum bans                     # List all bans
mtproxywidum unban 1.2.3.4            # Remove ban
```

Different from geo-blocking (which works by country). Both can run together.

---

### 💾 Encrypted Backups & Server Migration

**Encrypted backups** — AES-256-CBC with PBKDF2 key derivation (100k iterations). Password entered interactively, passed to openssl via environment variable (hidden from `ps aux`):

```bash
mtproxywidum backup --encrypt                # Create (password prompt)
mtproxywidum backup restore-encrypted file.tar.gz.enc
mtproxywidum backup autoclean 30             # Delete backups older than 30 days
```

Set `BACKUP_RETENTION_DAYS` in settings.conf for automatic cleanup via the bot's sweep loop.

**Server migration** — pack everything into a tarball and transfer:

```bash
# On old server
mtproxywidum migrate export                      # → /tmp/mtproxywidum-migrate-YYYYMMDD-HHMMSS.tar.gz
scp /tmp/mtproxywidum-migrate-*.tar.gz new-server:/tmp/

# On new server
mtproxywidum migrate import /tmp/mtproxywidum-migrate-*.tar.gz
# Auto-backs up current state first, then restarts
```

Includes: settings, secrets, upstreams, instances, tags, archives, banlist, profiles. Replication role is preserved per-server.

---

### ⚙️ Engine Tuning

Expose advanced engine parameters without editing raw TOML — changes are merged into the generated `config.toml` on every reload:

```bash
mtproxywidum tune list                       # Show whitelisted params + current overrides
mtproxywidum tune set fake_cert_len 4096     # Larger fake cert
mtproxywidum tune set log_level debug        # Verbose logging
mtproxywidum tune set mask_relay_timeout_ms 120000   # 2-minute mask relay timeout
mtproxywidum tune clear log_level            # Revert one to default
mtproxywidum tune clear all                  # Revert all
```

Whitelisted params are regex-validated on input. Invalid values are rejected. Also available in **TUI: Settings > [n] Engine tuning**.

---

### ✅ Verify & Audit

**`verify`** runs an end-to-end install check — Docker running, port bound, TLS handshake succeeds, domain reachable, Telegram API reachable, bot token valid:

```bash
mtproxywidum verify
```

**`history`** shows an audit log of config changes (secret add/remove/rotate, domain changes, etc.) with timestamps:

```bash
mtproxywidum history 100        # Last 100 events
```

**`speedtest`** measures outbound bandwidth and latency:

```bash
mtproxywidum speedtest
```

**`digest`** displays an executive summary dashboard of uptime, sockets, traffic totals, and bot status:

```bash
mtproxywidum digest
```

**`ping-dc`** benchmarks TCP handshake latency to global Telegram datacenters (DC1–DC5):

```bash
mtproxywidum ping-dc
```

---

### 🐚 Bash Completion

Get tab-completion for all commands:

```bash
sudo mtproxywidum completion > /etc/bash_completion.d/mtproxywidum
source /etc/bash_completion.d/mtproxywidum
# Now: mtproxywidum <TAB> or mtproxywidum secret <TAB> works
```

---

## 📊 Comparison

### MTProxyWidum vs Other Solutions

| Feature | **MTProxyWidum v1.3** | **mtg v2** (Go) | **Official MTProxy** (C) | **Bash Installers** |
|---------|:-:|:-:|:-:|:-:|
| **Engine** | telemt 3.x (Rust) | mtg (Go) | MTProxy (C) | Various |
| **Shared Quota Pools (`pool`)** | ✅ | ❌ | ❌ | ❌ |
| **Weekend/Holiday Data Passes (`calendar`)** | ✅ | ❌ | ❌ | ❌ |
| **Autonomous Upstream Failover Watchdog** | ✅ (3x ping check) | ❌ | ❌ | ❌ |
| **Autonomous SNI Cover Hunter (`auto-sni`)** | ✅ | ❌ | ❌ | ❌ |
| **1-Click Emergency Evacuation (`evacuate`)** | ✅ (<5s bundle) | ❌ | ❌ | ❌ |
| **Multi-Channel JSON Webhooks** | ✅ (Discord/Slack/etc.) | ❌ | ❌ | ❌ |
| **Interactive Live Dashboard (`live-diag`)** | ✅ | ❌ | ❌ | ❌ |
| **Network Chaos Engineering (`chaos-test`)** | ✅ (Linux `tc netem`) | ❌ | ❌ | ❌ |
| **IP Reputation Clean-Score Inspector** | ✅ | ❌ | ❌ | ❌ |
| **FakeTLS V2** | ✅ | ✅ | ❌ (needs patches) | Varies |
| **Active DPI Forensics (`dpi-inspect`)** | ✅ (Score /100) | ❌ | ❌ | ❌ |
| **Self-Healing Cover Watchdog** | ✅ | ❌ | ❌ | ❌ |
| **Emergency Lockdown Switch** | ✅ | ❌ | ❌ | ❌ |
| **Kernel SYN Shield (Tarpit)** | ✅ (>15 SYN/5s) | ❌ | ❌ | ❌ |
| **Per-IP Bandwidth Shaping (QoS)** | ✅ (Linux `tc`) | ❌ | ❌ | ❌ |
| **Off-Peak Happy Hours** | ✅ | ❌ | ❌ | ❌ |
| **Multi-Port Pool Listeners** | ✅ (Kernel NAT) | ❌ | Multi-process | Varies |
| **Multi-Domain SNI Pools** | ✅ | ❌ | ❌ | ❌ |
| **TCP MSS Clamping** | ✅ | ❌ | ❌ | ❌ |
| **Layer-4 LB Exporter (HAProxy/Nginx)** | ✅ | ❌ | ❌ | ❌ |
| **Cloudflare Dynamic DNS (DDNS)** | ✅ | ❌ | ❌ | ❌ |
| **Configuration Snapshots** | ✅ | ❌ | ❌ | ❌ |
| **Traffic Masking** | ✅ | ✅ | ❌ | ❌ |
| **Multi-User Secrets** | ✅ (unlimited) | ❌ (1 secret) | Multi-secret | Usually 1 |
| **Per-User Limits** | ✅ (conns, IPs, quota, expiry) | ❌ | ❌ | ❌ |
| **Per-User Traffic Stats** | ✅ (Prometheus) | ❌ | ❌ | ❌ |
| **Telegram Bot** | ✅ (21 commands) | ❌ | ❌ | ❌ |
| **Interactive TUI** | ✅ | ❌ | ❌ | ❌ |
| **Proxy Chaining** | ✅ (SOCKS5/4, weighted) | ✅ (SOCKS5) | ❌ | ❌ |
| **Master-Slave Replication** | ✅ (rsync+SSH, systemd) | ❌ | ❌ | ❌ |
| **Geo-Blocking** | ✅ | IP allowlist/blocklist | ❌ | ❌ |
| **Ad-Tag Support** | ✅ | ❌ (removed in v2) | ✅ | Varies |
| **QR Code Generation** | ✅ | ❌ | ❌ | Some |
| **Auto-Recovery** | ✅ (with alerts) | ❌ | ❌ | ❌ |
| **Auto-Update** | ✅ | ❌ | ❌ | ❌ |
| **Docker** | ✅ (multi-arch) | ✅ | ❌ | Varies |
| **User Expiry Dates** | ✅ | ❌ | ❌ | ❌ |
| **Bandwidth Quotas** | ✅ | ❌ | ❌ | ❌ |
| **Device Limits** | ✅ | ❌ | ❌ | ❌ |
| **Tags & Templates** | ✅ | ❌ | ❌ | ❌ |
| **Encrypted Backups** | ✅ (AES-256) | ❌ | ❌ | ❌ |
| **Server Migration** | ✅ (tarball export/import) | ❌ | ❌ | ❌ |
| **Maintenance Mode** | ✅ (graceful RST) | ❌ | ❌ | ❌ |
| **Audit Log** | ✅ | ❌ | ❌ | ❌ |
| **Engine Tuning UI** | ✅ (whitelisted params) | ❌ | Raw files | ❌ |
| **Active Development** | ✅ | ✅ | Abandoned | Varies |

<details>
<summary><b>Why Not mtg?</b></summary>

[mtg](https://github.com/9seconds/mtg) is solid and minimal — by design. It's **"highly opinionated"** and intentionally barebones. Fine for a single-user fire-and-forget proxy.

But mtg v2 dropped ad-tag support, only supports one secret, has no user limits, no management interface, and no auto-recovery.

</details>

<details>
<summary><b>Why Not the Official MTProxy?</b></summary>

[Telegram's official MTProxy](https://github.com/TelegramMessenger/MTProxy) (C implementation) was **last updated in 2019**. No FakeTLS, no traffic masking, no per-user controls, manual compilation, no Docker.

</details>

<details>
<summary><b>Why Not a Simple Bash Installer?</b></summary>

Scripts like MTProtoProxyInstaller install a proxy and give you a link. That's it. No user management, no monitoring, no bot, no updates, no recovery.

MTProxyWidum is not just an installer — it's a **management platform** that happens to install itself.

</details>

---

## 🏗️ Architecture

```
Telegram Client
      │
      ▼
┌─────────────────────────┐
│  Your Server (port 443) │
│  ┌───────────────────┐  │
│  │  Docker Container  │  │
│  │  ┌─────────────┐  │  │
│  │  │   telemt     │  │  │  ← Rust/Tokio engine
│  │  │  (FakeTLS)   │  │  │
│  │  └──────┬──────┘  │  │
│  └─────────┼─────────┘  │
│            │             │
│     ┌──────┴──────┐     │
│     ▼             ▼     │
│  Direct      SOCKS5     │  ← Upstream routing
│  routing     chaining   │
└─────────┬───────────────┘
          │
          ▼
   Telegram Servers


Master-Slave Replication (optional):

  Master Server              Slave Server(s)
  ┌──────────────┐           ┌──────────────┐
  │ mtproxywidum   │──rsync──▶ │ mtproxywidum   │
  │ (systemd     │   +SSH    │ (receives    │
  │  timer 60s)  │           │  config)     │
  └──────────────┘           └──────────────┘
```

| Component | Role |
|-----------|------|
| **mtproxywidum.sh** | Single bash script: CLI, TUI, config manager |
| **telemt** | Rust MTProto engine running inside Docker |
| **Telegram bot service** | Independent systemd service polling Bot API |
| **Replication sync service** | systemd timer pushing config to slave servers |
| **Prometheus endpoint** | `/metrics` on port 9090 (localhost only) |

---

## 📖 CLI Reference

<details>
<summary><b>Proxy Management</b></summary>

```bash
mtproxywidum install              # Run installation wizard
mtproxywidum uninstall            # Remove everything
mtproxywidum start                # Start proxy
mtproxywidum stop                 # Stop proxy
mtproxywidum restart              # Restart proxy
mtproxywidum status               # Show proxy status
mtproxywidum digest               # Executive summary report
mtproxywidum ping-dc              # Telegram DC latency benchmark
mtproxywidum menu                 # Open interactive TUI
```

</details>

<details>
<summary><b>User Secrets</b></summary>

**Core operations:**
```bash
mtproxywidum secret add <label>           # Add user (optional: --template <name>)
mtproxywidum secret remove <label>        # Remove user (supports --dry-run)
mtproxywidum secret list                  # List all users
mtproxywidum secret list --tag <tag>      # Filter list by tag
mtproxywidum secret list --csv            # Output as CSV for spreadsheets
mtproxywidum secret info <label>          # Full detail view (limits, traffic, link, QR)
mtproxywidum secret search <query>        # Find secrets by label or notes
mtproxywidum secret rotate <label>        # New key, same label
mtproxywidum secret rotate --all          # Bulk rotate (supports --dry-run)
mtproxywidum secret clone <src> <new>     # Duplicate with all limits
mtproxywidum secret rename <old> <new>    # Rename a secret
mtproxywidum secret enable <label>        # Re-enable user
mtproxywidum secret disable <label>       # Temporarily disable
mtproxywidum secret disable-expired       # Disable all expired secrets
mtproxywidum secret link [label]          # Show proxy link
mtproxywidum secret qr [label]            # Show QR code
mtproxywidum secret generate-links [txt|html]  # Bulk export all links
mtproxywidum secret sub                   # Base64 subscription link feed
mtproxywidum secret export-json           # Export users as clean JSON
mtproxywidum secret purge-disabled        # Permanently purge disabled/expired
mtproxywidum secret rename-prefix <o> <n> # Bulk rename matching prefix
mtproxywidum secret note <label> [text]   # Attach notes/description
mtproxywidum secret logs <label> [lines]  # Per-user activity log
mtproxywidum secret adtag <label> <tag|clear> # Per-secret Telegram ad-tag
```

**Limits & Quotas:**
```bash
mtproxywidum secret setlimit <label> <type> <value>          # Set individual limit
mtproxywidum secret setlimits <label> <conns> <ips> <quota> [expires]  # Set all limits
mtproxywidum secret extend <label> <days>   # Extend one secret's expiry
mtproxywidum secret bulk-extend <days>      # Extend all secrets' expiry
mtproxywidum secret quota-reset <label> <day|off>  # Monthly quota reset on day N
mtproxywidum secret reset-traffic <label|all>      # Reset traffic counters
```

**Tags & Templates:**
```bash
mtproxywidum secret tag <label> <tag1,tag2>  # Assign tags to a secret
mtproxywidum secret untag <label>            # Clear all tags
mtproxywidum secret tags [label]             # Show all tags or for one secret
mtproxywidum template save <name> <conns> <ips> <quota> [expires] [notes]
mtproxywidum template list                   # List saved templates
mtproxywidum template apply <name> <label>   # Apply template to existing secret
mtproxywidum template delete <name>
mtproxywidum secret add alice --template premium  # Add with preset limits
```

**Organization & Lifecycle:**
```bash
mtproxywidum secret sort [traffic|conns|date|name]  # Reorder the list
mtproxywidum secret top [traffic|conns] [N]  # Top N users (default 5)
mtproxywidum secret stats                 # Compact per-user overview
mtproxywidum secret archive <label>       # Soft-delete (restorable)
mtproxywidum secret unarchive <label>     # Restore from archive
mtproxywidum secret archives              # List archived secrets
mtproxywidum secret export > file.csv     # Export to CSV
mtproxywidum secret import file.csv       # Import from CSV
mtproxywidum secret add-batch <l1> <l2> ...     # Add many at once
mtproxywidum secret remove-batch <l1> <l2> ...  # Remove many at once
mtproxywidum auto-rotate [N|off]          # Global policy: auto-rotate older than N days
```

</details>

<details>
<summary><b>Configuration</b></summary>

```bash
mtproxywidum port [get|<number>]          # Get/set proxy port
mtproxywidum ip [get|auto|<address>]      # Get/set custom IP for proxy links
mtproxywidum domain [get|clear|<host>]    # Get/set FakeTLS domain
mtproxywidum mask-backend [host:port]     # Set mask backend for non-proxy traffic
mtproxywidum mask-relay-bytes [N|0|clear] # Max bytes per dir on mask relay (0=unlimited)
mtproxywidum tg-urls [get|set <field> <url>|clear]  # Custom Telegram infra URLs
mtproxywidum adtag set <hex>              # Set ad-tag
mtproxywidum adtag remove                 # Remove ad-tag
mtproxywidum config                       # Show current engine config
```

**Engine Tuning (advanced):**
```bash
mtproxywidum tune list                    # Show whitelisted tunable params + current values
mtproxywidum tune get <param>             # Show current value
mtproxywidum tune set <param> <value>     # Set a tunable (e.g. fake_cert_len, mask_relay_timeout_ms, log_level)
mtproxywidum tune clear <param|all>       # Clear one or all tunings
```

Tunings are applied via sed post-processing on the generated config.toml — no TOML duplicate-key issues. Whitelisted params include: `fake_cert_len`, `client_handshake`, `tg_connect`, `client_keepalive`, `client_ack`, `replay_check_len`, `replay_window_secs`, `ignore_time_skew`, `listen_backlog`, `max_connections`, `accept_permit_timeout_ms`, `prefer_ipv6`, `fast_mode`, `log_level`, `mask_relay_timeout_ms`, `mask_relay_idle_timeout_ms`.

</details>

<details>
<summary><b>Profiles</b></summary>

```bash
mtproxywidum profile save <name>          # Snapshot current config
mtproxywidum profile load <name>          # Restore profile (auto-restarts)
mtproxywidum profile list                 # List all saved profiles
mtproxywidum profile delete <name>        # Delete a profile
```

</details>

<details>
<summary><b>Backup, Restore & Migration</b></summary>

```bash
# Regular (unencrypted) backups
mtproxywidum backup                       # Create a timestamped backup
mtproxywidum restore <file>               # Restore from a backup file
mtproxywidum backups                      # List available backups
mtproxywidum backup autoclean [days]      # Delete backups older than N days

# Encrypted backups (AES-256 + PBKDF2)
mtproxywidum backup --encrypt             # Create encrypted backup (password prompt)
mtproxywidum backup restore-encrypted <file>  # Restore encrypted backup
# Or: mtproxywidum restore --encrypted <file>

# Server migration (tarball-based — all settings, secrets, tags, bans, archives, profiles)
mtproxywidum migrate export [file]        # Export all state to a tarball
mtproxywidum migrate import <file>        # Import state from a tarball (auto-backs up current first)
```

The migrate workflow is perfect for server pivots: run `migrate export` on the old server, `scp` the tarball, run `migrate import` on the new server. Replication config is preserved per-role.

</details>

<details>
<summary><b>Notifications & Bot</b></summary>

```bash
mtproxywidum notify <message>             # Send custom message via Telegram bot
mtproxywidum telegram setup               # Interactive bot setup
mtproxywidum telegram status              # Show bot status
mtproxywidum telegram test                # Send test message
mtproxywidum telegram interval <hours>    # Change report interval (1-168h)
mtproxywidum telegram label <name>        # Change server label in notifications
mtproxywidum telegram alerts <on|off>     # Enable/disable down/recovery alerts
mtproxywidum telegram disable             # Disable bot
mtproxywidum telegram remove              # Remove bot completely
```

</details>

<details>
<summary><b>Periodic Maintenance</b></summary>

```bash
mtproxywidum sweep                        # Run all periodic tasks (called by bot loop every 5 min)
mtproxywidum auto-rotate [N|off]          # Auto-rotate secrets older than N days
# Monthly quota reset is per-secret: see `secret quota-reset` in User Secrets
```

Periodic tasks run automatically via the Telegram bot daemon's 5-min loop when installed. Can be triggered manually via `sweep` or scheduled via cron.

</details>

<details>
<summary><b>Polish & Completion</b></summary>

```bash
mtproxywidum completion                   # Emit bash tab-completion script
mtproxywidum changelog                    # Show GitHub release notes since installed version

# Install bash completion (root):
sudo mtproxywidum completion > /etc/bash_completion.d/mtproxywidum
# Or in your shell:
eval "$(mtproxywidum completion)"
```

</details>


<details>
<summary><b>Replication</b></summary>

```bash
mtproxywidum replication setup            # Interactive wizard (master/slave/standalone)
mtproxywidum replication status           # Role, timer state, last sync, slave list
mtproxywidum replication add <host> [port] [label]   # Register a slave server
mtproxywidum replication remove <host_or_label>      # Remove a slave
mtproxywidum replication list             # List all slaves
mtproxywidum replication enable           # Enable sync timer
mtproxywidum replication disable          # Disable sync timer
mtproxywidum replication sync             # Trigger immediate sync
mtproxywidum replication test [host]      # Test SSH connectivity to slave(s)
mtproxywidum replication logs             # Show sync log
mtproxywidum replication reset            # Remove all replication config
mtproxywidum replication promote          # Promote slave to master (failover)
```

</details>

<details>
<summary><b>Enterprise Commercial & Shield Suite</b></summary>

```bash
mtproxywidum voucher create <cnt> <qta> <dys> # Generate batch voucher codes
mtproxywidum voucher list [active|all]        # List vouchers and redemption status
mtproxywidum voucher revoke <code>            # Revoke a voucher code
mtproxywidum voucher redeem <code> [label]    # Redeem voucher code locally
mtproxywidum admin add <chat_id> <role>       # Add role-based Telegram admin (superadmin/reseller)
mtproxywidum admin remove <chat_id>           # Remove role-based Telegram admin
mtproxywidum admin list                       # List configured Telegram admins
mtproxywidum portal [enable|disable|status]   # Manage Self-Service HTML Status Portal
mtproxywidum scanner-shield [enable|disable]  # Manage Automated Shodan/Censys Threat Shield
```

</details>

<details>
<summary><b>Security & Routing</b></summary>

**Geo-Blocking:**
```bash
mtproxywidum geoblock add <CC>            # Block country
mtproxywidum geoblock remove <CC>         # Unblock country
mtproxywidum geoblock list                # List blocked countries
```

**IP Banlist:**
```bash
mtproxywidum ban <ip|cidr>                # Ban a specific IP/CIDR (iptables, survives reboots)
mtproxywidum unban <ip|cidr>              # Remove ban
mtproxywidum bans                         # List banned IPs
```

**Maintenance Mode:**
```bash
mtproxywidum maintenance on               # Reject new connections gracefully (RST), keep existing alive
mtproxywidum maintenance off              # Restore normal operation
mtproxywidum maintenance status           # Check current state
```

**Upstream Routing:**
```bash
mtproxywidum upstream list                # List upstreams
mtproxywidum upstream add <name> <type> <host:port> [user] [pass] [weight]
mtproxywidum upstream remove <name>       # Remove upstream
mtproxywidum upstream test <name>         # Test connectivity
mtproxywidum sni-policy [mask|drop]       # Unknown SNI action (mask=permissive, drop=strict)
```

</details>

<details>
<summary><b>Next-Gen Anti-DPI, QoS & DevOps Suite</b></summary>

**Anti-DPI & Posture Hardening:**
```bash
mtproxywidum syn-shield [on|off|status]   # Toggle Kernel SYN Shield (>15 SYN/5s tarpit)
mtproxywidum shield [on|off|status]       # Toggle Anti-DPI Packet Padding Shield
mtproxywidum cover-shield [on|off|target] # Toggle Reverse-Proxy Cover Shield (Active Probe Defense)
mtproxywidum bbr [on|off|status]          # Toggle TCP BBRv3 Congestion Control & ECN tuning
mtproxywidum stealth [ultra|normal|status] # Hot-swap engine replay window and cache size
mtproxywidum clamp-mss [on|off|status]    # Align TCP MSS to PMTU preventing packet drops
mtproxywidum client-mss [status|off|tspu] # Telemt client-side MSS (off=max speed, tspu=DPI evasion)
mtproxywidum domain-pool [add|remove|list] # Manage multi-domain SNI rotation pool
mtproxywidum port-pool [add|remove|list]  # Listen on multi-port fallback pool via kernel NAT
mtproxywidum lockdown [on|off|status]     # Engage emergency panic defense posture
```

**Forensics & Watchdogs:**
```bash
mtproxywidum dpi-inspect                  # Run active 5-point Anti-DPI readiness scan (/100 score)
mtproxywidum cover-watchdog [test|auto]   # Probe cover domain pool & auto-rotate on censorship
mtproxywidum abuse-watch                  # Scan users for abnormal bandwidth spikes (>50GB/day)
```

**Bandwidth Shaping & Quotas:**
```bash
mtproxywidum qos [set <mbps>|off|status]  # Linux tc token bucket per-IP bandwidth limiter
mtproxywidum happy-hours [set <win>|off]  # Define off-peak unmetered traffic windows
mtproxywidum notify-expiry                # Trigger proactive Telegram reminders (7d, 3d, 24h)
mtproxywidum broadcast <message>          # Send system announcement via Telegram bot
```

**DevOps & Clustering Automation:**
```bash
mtproxywidum export-lb [haproxy|nginx]    # Generate Layer-4 TCP load balancer config snippets
mtproxywidum ddns [set|run|status|off]    # Manage Cloudflare Dynamic DNS public IP updater
mtproxywidum diag-dump                    # Create full forensic diagnostic bundle (.tar.gz)
mtproxywidum snapshot [create|restore|list] # Manage point-in-time configuration tarballs
```

**Operations, Briefings & Onboarding Suite:**
```bash
mtproxywidum backup send-tg [file]        # Push backup archive directly to Telegram bot chat
mtproxywidum daily-report [on|off|run]    # Schedule automated morning executive briefing
mtproxywidum ssh-shield [on|off|status]   # Enable fail2ban SSH brute-force intrusion shield
mtproxywidum net-grade                    # Benchmark international routing & calculate A+/A/B/C grade
mtproxywidum onboard [label]              # Interactive step-by-step user onboarding wizard
```

**Performance, Diagnostics & Self-Healing Suite:**
```bash
mtproxywidum tcp-boost [on|off|status]    # Activate Linux Kernel TCP BBR & Fast Open booster
mtproxywidum tcp-clean [on|off|status]    # Activate aggressive keep-alive dead mobile socket reaper
mtproxywidum socket-boost [on|off]        # Apply ultra-low latency kernel socket queue expansion
mtproxywidum tls-pad [auto|off|rotate]    # Dynamic FakeTLS certificate length jitter & randomization
mtproxywidum honeypot [on|off|status]     # Enable active probe decoy redirection & protection
mtproxywidum leak-scan [thresh]           # Detect multi-IP subscription sharing anomalies
mtproxywidum cert-check [domain]          # Inspect cover domain SSL/TLS certificate health
mtproxywidum clone-link                   # Export one-line Base64 server replication bundle
mtproxywidum bootstrap <base64>           # Deploy cloned config bundle on a fresh node
mtproxywidum heal                         # Run emergency RAM & dead socket cleanup immediately
mtproxywidum auto-heal [on|off|status]    # Enable background automated RAM/socket self-healer
mtproxywidum tcp-fastpath [on|off]        # TCP window scaling, SACK & path MTU probing optimizer
mtproxywidum ram-tune [auto|off]          # Auto-detect RAM & apply optimal TCP memory buffers
mtproxywidum port-hop [add|remove|list]   # Dynamic multi-port NAT range redirection
mtproxywidum cpu-tune [on|off|status]     # Multi-core IRQ packet spreading (RPS/RFS)
mtproxywidum eco-mode [on|off|status]     # Lightweight RAM & TCP kernel tuning for micro-servers
mtproxywidum decoy [set|clear|status]     # Active probe decoy routing to fallback URL/honeypot
mtproxywidum geofence [add|remove|list]   # Country-level CIDR firewall blocking/allowing
mtproxywidum chaos-test [action]          # Simulate latency/loss/disconnects for resilience testing
mtproxywidum ip-score [ip|self]           # Check proxy IP against global blacklists & censorship feeds
mtproxywidum pool [create|add|remove|list]# Shared Quota Pools for teams & organizations
mtproxywidum calendar [action]            # Weekend & holiday unmetered free data passes
mtproxywidum expire-action [action]       # Custom expiry policies (disable, delete, archive)
mtproxywidum top-users [metric]           # Live interactive leaderboard ranking users
mtproxywidum traffic-alert [action]       # Automated high-velocity burst anomaly alerts
mtproxywidum evacuate [ip|bundle]         # 1-Click emergency server migration & data bundle
mtproxywidum webhook [add|remove|list]    # Multi-channel JSON alerts for Discord/Slack/DingTalk
mtproxywidum qr-sheet [export|pdf]        # Printable QR code onboarding sheet generator
mtproxywidum export-report [format]       # Executive monthly audit & billing report generator
mtproxywidum dc-optimize [dc|auto]        # Telegram Datacenter route & latency optimizer
mtproxywidum live-diag                    # Interactive real-time ASCII telemetry dashboard
mtproxywidum auto-sni [on|off|status]     # Autonomous SNI cover domain hunter & benchmark
mtproxywidum failover [on|off|status]     # Autonomous upstream failover & DNS health watchdog
mtproxywidum cert-shield [on|off|status]  # TLS certificate fingerprint randomizer
mtproxywidum tui-theme [theme]            # Switch TUI color themes (dark, matrix, cyan, classic)
```

</details>

<details>
<summary><b>Monitoring</b></summary>

```bash
mtproxywidum traffic                      # Per-user traffic breakdown
mtproxywidum connections                  # Live active connections per user
mtproxywidum metrics                      # Engine metrics dashboard
mtproxywidum metrics live [seconds]       # Auto-refresh metrics (default: 5s)
mtproxywidum logs                         # Stream live logs
mtproxywidum health                       # Quick health check
mtproxywidum doctor                       # Comprehensive diagnostics (port, TLS, secrets, disk, bot)
mtproxywidum upload-test                  # Audit proxy upload mechanisms, socket write buffers & DC egress
mtproxywidum verify                       # End-to-end install check (port, TLS, Telegram API, metrics)
mtproxywidum port-check                   # Test if proxy port is reachable from outside
mtproxywidum speedtest                    # Outbound bandwidth/latency test from server
mtproxywidum uptime                       # One-line status (scriptable)
mtproxywidum status [--json]              # Proxy status (JSON for monitoring integrations)
mtproxywidum info                         # Comprehensive server overview (OS, IPv4/IPv6, users, services)
mtproxywidum history [lines]              # Audit log of config changes
```

</details>

<details>
<summary><b>Engine & Updates</b></summary>

```bash
mtproxywidum engine status                # Show current engine version
mtproxywidum engine rebuild               # Force rebuild engine image
mtproxywidum rebuild                      # Force rebuild from source
mtproxywidum update                       # Check for script + engine updates
```

</details>

---

## 💻 System Requirements

| Requirement | Details |
|-------------|---------|
| **OS** | Ubuntu, Debian, CentOS, RHEL, Fedora, Rocky, AlmaLinux, Alpine |
| **Docker** | Auto-installed if not present |
| **RAM** | 256MB minimum |
| **Access** | Root required |
| **Bash** | 4.2+ |

---

## 📁 Configuration Files

| File | Purpose |
|------|---------|
| `/opt/mtproxywidum/settings.conf` | Proxy settings (port, domain, limits, tunings prefs) |
| `/opt/mtproxywidum/secrets.conf` | User keys, limits, expiry dates |
| `/opt/mtproxywidum/secrets_archive.conf` | Archived secrets (soft-deleted, restorable) |
| `/opt/mtproxywidum/secrets_tags.conf` | User tags (label → comma-separated tags) |
| `/opt/mtproxywidum/secrets_quota_reset.conf` | Per-secret monthly quota reset days |
| `/opt/mtproxywidum/templates.conf` | Reusable limit templates |
| `/opt/mtproxywidum/tunings.conf` | Engine parameter overrides (from `tune set`) |
| `/opt/mtproxywidum/banlist.conf` | Banned IPs/CIDRs (iptables-backed) |
| `/opt/mtproxywidum/upstreams.conf` | Upstream routing rules |
| `/opt/mtproxywidum/instances.conf` | Multi-port instance config |
| `/opt/mtproxywidum/profiles/` | Saved config profiles (named snapshots) |
| `/opt/mtproxywidum/audit.log` | Config change history |
| `/opt/mtproxywidum/connection.log` | Per-user activity log |
| `/opt/mtproxywidum/mtproxy/config.toml` | Generated telemt engine config |
| `/opt/mtproxywidum/pools.conf` | Shared Quota Pools definitions and membership tracking |
| `/opt/mtproxywidum/calendar.conf` | Weekend and holiday dynamic scheduling rules |
| `/opt/mtproxywidum/webhooks.conf` | Multi-channel webhook endpoint URLs |
| `/opt/mtproxywidum/geofence.conf` | Country-level geo-fencing rules and CIDR cache |
| `/opt/mtproxywidum/decoy.conf` | Active probe decoy routing and honeypot fallback targets |
| `/opt/mtproxywidum/failover.conf` | Autonomous upstream failover status and check policies |
| `/opt/mtproxywidum/eco_mode.conf` | Lightweight memory conservation mode status |
| `/opt/mtproxywidum/backups/` | Automatic backups (auto-cleaned via `BACKUP_RETENTION_DAYS`) |

---

## 📋 Changelog

### v1.4.0-LTS — Enterprise Federation & Self-Service Suite (Absolute Maximum Features)

- **QoS Bandwidth Shaping (`speed-limit`):** Hierarchical Token Bucket (`htb`) and Linux `tc` shaping dynamically assigned per account.
- **Multi-Server Fleet Federation (`fleet`):** Centralized Master-Slave telemetry aggregation and multi-node health monitoring.
- **Automated SSL Shield (`ssl-shield`):** Zero-touch Let's Encrypt / `openssl` certificate issuance and ACME domain management.
- **Automated Cloud Backups (`backup-cloud`):** Automatic tarball offloading to Telegram admin chat (`sendDocument`) or multi-cloud storage (`rclone`/S3/R2).
- **Dual-Tier Telegram Bot (`telegram`):** Public self-service tier (`/start`, `/my_status <label>`, `/voucher`) combined with an authenticated Admin Control Plane (`/mp_fleet`, `/mp_secrets`, `/mp_lockdown`).
- **Comprehensive Hardening & Audit:** Fixed race conditions (`flock`), prevented configuration code injection (`grep | cut`), added comma/pipe CSV import normalization (`secret_import`), and ensured strict-mode container fallbacks across 18,369 lines (`100% clean`).

### v1.3.1 — Performance & Anti-DPI Upgrade Suite
- Added **TCP BBRv3 & ECN Auto-Tuning (`bbr` / `tune-net`)**, **Anti-DPI Packet Padding Shield (`shield`)**, and **Reverse-Proxy Cover Shield (`cover-shield`)**.

### v1.3.0 — The Mega-Release (20 Enterprise Features Across 4 Suites)
- Added **Eco-Mode (`eco-mode`)**, **Decoy Routing (`decoy`)**, **Shared Quota Pools (`pool`)**, **Calendar Scheduling (`calendar`)**, **1-Click Evacuation (`evacuate`)**, **Multi-Channel Webhooks (`webhook`)**, and **Autonomous SNI Hunter (`auto-sni`)**.

### v1.2.0 — Commercial & Shield Suite, Next-Gen Anti-DPI & DevOps Clustering
- Added **Vouchers (`voucher`)**, **Role-Based Access Control (`admin`)**, **Status Portal (`portal`)**, **Scanner Shield (`scanner-shield`)**, and **HAProxy/Nginx Exporter (`export-lb`)**.

### v1.1.0 — Anti-DPI & Stealth Defenses Expansion
- Added **Kernel SYN Shield (`shield`)**, **Stealth Presets (`stealth`)**, **TCP MSS Clamping (`clamp-mss`)**, and **Multi-Domain SNI Pool (`domain-pool`)**.

### v1.0.10 — Executive Digest & DC Benchmarking
- Added **Executive Digest (`digest`)**, **Datacenter Benchmark (`ping-dc`)**, **Base64 Subscriptions (`secret sub`)**, and **JSON Database Export (`secret export-json`)**.

### v1.0.0 to v1.0.9 — Core Platform Foundation & Telemt Engine Evolutions
- Initial launch of MTProxyWidum with `telemt` Rust engine, interactive TUI, CLI, FakeTLS, master-slave replication (`rsync+SSH`), user tagging, templates, soft-delete archiving, and persistent traffic accounting.

---

## 🙏 Credits

Built on top of **telemt** — a high-performance MTProto proxy engine written in Rust/Tokio. All proxy protocol handling, FakeTLS, traffic masking, and per-user enforcement is powered by telemt.

---

## 📖 Documentation & Guides

For step-by-step tutorials with screenshots and detailed explanations, visit our guides on SamNet:

- **[Complete MTProto Proxy Setup Guide](https://www.samnet.dev/learn/networking/mtproto-proxy-telegram/)** — Full walkthrough: install, multi-user management, FakeTLS, Telegram bot, proxy chaining, geo-blocking, replication, and ad-tag monetization.
- **[3X-UI Panel Setup Guide](https://www.samnet.dev/learn/networking/xui-setup/)** — If you need VLESS/VMess/Reality/Trojan protocols alongside MTProto.
- **[Server Hardening Guide](https://www.samnet.dev/learn/security/server-hardening/)** — Secure your proxy server: SSH hardening, firewall rules, fail2ban.
- **[iptables Cheat Sheet](https://www.samnet.dev/learn/cheatsheets/iptables-guide/)** — Firewall rules reference for protecting your proxy.
- **[VPN Leak Test](https://www.samnet.dev/tools/vpn-leak-test/)** — Verify your proxy is hiding your real IP.
- **[Port Scanner](https://www.samnet.dev/tools/port-scanner/)** — Check if your proxy port is accessible from the internet.

---

## 💖 Donate

If you find MTProxyWidum useful, consider supporting its development:

[**samnet.dev/donate**](https://www.samnet.dev/donate/)

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

The **telemt engine** (included as a Docker image) is licensed under the [Telemt Public License 3 (TPL-3)](https://github.com/telemt/telemt/blob/main/LICENSE) — a permissive license that allows use, redistribution, and modification with attribution.

Copyright (c) 2026 SamNet Technologies
