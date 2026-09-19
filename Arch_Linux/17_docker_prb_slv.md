# Docker Hub Login/Push Troubleshooting Guide

> **Date:** 2026-09-18
> **Environment:** Linux (Wi-Fi: `wlp1s0`), USB tethering + VPN, Docker Engine
> **Symptoms:** `docker login` → `context deadline exceeded` (timeout to `auth.docker.io`), later `access token has insufficient scopes` on push

---

## 🔍 Root Causes (কী কী সমস্যা ছিল)

| # | সমস্যা | কেন হলো |
|---|--------|---------|
| 1 | `/etc/hosts`-এ ভুল entry: `3.219.239.5 auth.docker.io` | পুরনো কোনো experiment থেকে, যেটার IP আমার ISP-তে block |
| 2 | `/etc/hosts`-এ **প্রথম match-ই জেতে** | তাই ভালো IP বসালেও Docker ভুল IP-তেই যাচ্ছিল |
| 3 | Router DNS (`192.168.0.1`) block/slow AWS IP দিচ্ছিল | Docker Hub কখনো AWS, কখনো Cloudflare IP দেয় — ভাগ্য |
| 4 | VPN+Tethering-এ **global IPv6 নেই**, কিন্তু DNS AAAA record দেয় | IPv6 connect attempt-এ delay (fallback slow) |
| 5 | Push-এ `insufficient scopes` | Password login read-only token দেয় → PAT (Read & Write) লাগে |

---

## ✅ Step-by-Step Fix Procedure

### Step 1: DNS resolve হচ্ছে কিনা check

```bash
nslookup auth.docker.io
```

ঠিকঠাক resolve হলে DNS সমস্যা না — connectivity সমস্যা।

### Step 2: Connection টেস্ট (কোন IP-তে যাচ্ছে দেখুন)

```bash
curl -v --connect-timeout 10 https://auth.docker.io
```

`Trying X.X.X.X:443...` দেখে note করুন কোন IP-তে যাচ্ছে। Hang করলে সেই IP block।

### Step 3: `/etc/hosts` check ⭐ (সবচেয়ে common কারণ!)

```bash
cat /etc/hosts | grep docker
```

⚠️ **পুরনো/সন্দেহজনক entry থাকলে মুছে দিন:**
```bash
sudo sed -i '/auth.docker.io/d' /etc/hosts
```

### Step 4: Good IP বের করে hard-code করুন

Cloudflare IP দিয়ে test:
```bash
curl -v --resolve auth.docker.io:443:104.18.43.178 https://auth.docker.io
# HTTP 404 আসলেও OK — মানে connection ঠিক আছে
```

টেস্ট-pass হলে:
```bash
echo "104.18.43.178 auth.docker.io" | sudo tee -a /etc/hosts
```

Registry-র জন্য:
```bash
nslookup registry-1.docker.io 1.1.1.1
# এরপর যেকোনো একটা IPv4 দিয়ে test:
curl -v --connect-timeout 10 --resolve registry-1.docker.io:443:<IP> https://registry-1.docker.io/v2/
# HTTP 401 আসলে OK (authentication required = connection ঠিক)
echo "<IP> registry-1.docker.io" | sudo tee -a /etc/hosts
```

### Step 5: DNS permanent fix

```bash
sudo resolvectl dns wlp1s0 1.1.1.1 8.8.8.8
sudo resolvectl domain wlp1s0 "~."
```

(Interface নাম `ip addr` দিয়ে দেখুন — Wi-Fi হলে সাধারণত `wlp1s0`/`wlan0`)

### Step 6: Docker restart + login

```bash
sudo systemctl restart docker
sudo docker logout
sudo docker login -u <username>
```

### Step 7: Push-এ scope error হলে → PAT

```
Error: access token has insufficient scopes
```

**সমাধান:**
1. যান https://app.docker.com/settings → Security → New Access Token
2. **Permissions: `Read & Write`** (শুধু Read না!)
3. Login-এ password-এর জায়গায় **PAT paste** করুন
4. Push:
```bash
sudo docker push username/repo:tag
```

---

## 🧠 Concept Summary (মনে রাখবেন)

```
docker login flow:
  docker CLI → auth.docker.io (token পায়) → registry-1.docker.io (push করে)
             ↑ DNS + /etc/hosts দিয়ে resolve হয়
```

- `/etc/hosts` **প্রথম match** ব্যবহার করে → পুরনো ভুল entry সব নষ্ট করে
- `curl -v` দিয়ে **exact IP** দেখা যায় — DNS vs connection আলাদা diagnose করা যায়
- `--resolve host:443:IP` দিয়ে **specific IP টেস্ট** করা যায়
- `--connect-timeout 10` না দিলে hang করে অনেকক্ষণ
- Login `Login Succeeded` হলেও push scope আলাদা — PAT (Read & Write) লাগে

---

## 🛠️ Quick Cheat Sheet (পরের বার এগুলো আগে চেক করবেন)

```bash
# 1. hosts file-এ ভুল entry আছে কিনা
cat /etc/hosts | grep docker

# 2. DNS ঠিক আছে কিনা
nslookup auth.docker.io 1.1.1.1

# 3. Connection টেস্ট
curl -v --connect-timeout 10 https://auth.docker.io

# 4. IPv6 সমস্যা হলে disable
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1

# 5. DNS বদলান
sudo resolvectl dns <interface> 1.1.1.1 8.8.8.8

# 6. Proxy আছে কিনা (VPN/tethering-এ common)
env | grep -i proxy
systemctl show docker --property=Environment

# 7. Fresh login
sudo docker logout && sudo docker login

# 8. Docker daemon log
journalctl -u docker -n 30 --no-pager
```

---

## ⚠️ Notes

- **VPN + USB tethering** ব্যবহার করলে: IPv6 blackhole, DNS hijack, slow routing — সবই হতে পারে
- Cloudflare IP (`104.18.43.178`) মাঝে মাঝে বদলায় → hosts entry না কাজ করলে fresh IP বসাবেন
- Permanent solution হলো: hosts-এ hard-code **না** করে trusted DNS (`1.1.1.1`) + ভালো route ব্যবহার করা
- `sudo` দিয়ে docker চালালে credentials `/root/.docker/config.json`-এ থাকে — sudo ছাড়া চালালে আবার login লাগবে
