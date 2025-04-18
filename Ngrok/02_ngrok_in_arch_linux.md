
# `# Downlaod Ngrok in arch linux:`

**1. Run the uvicorn Server:**
```bash
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

**2. Install ngrok:**
```bash
yay -S ngrok
```
**3. Verify the installation:**
```bash 
ngrok --verion
```

**4. Authentication: (for-free-plan we also need to login)**
```bash
ngrok config add-authtoken <token-from-ngrok-website>
```

**5. Bind with Ngrok:**
```bash
ngrok http 8000
```

<br>
<br>

# `**i got an error: i solve the problem by the following steps: **`

<br>
<br>

#### **1. Edit `/etc/hosts` to Add `localhost` Mappings**
- **Open `/etc/hosts`**:
  ```bash
  sudo nano /etc/hosts
  ```
- **Replace its contents** with:
  ```
  # Static table lookup for hostnames.
  # See hosts(5) for details.

  127.0.0.1   localhost
  ::1         localhost
  ```
  - Explanation:
    - `127.0.0.1 localhost`: Maps `localhost` to the IPv4 loopback address.
    - `::1 localhost`: Maps `localhost` to the IPv6 loopback address.
- **Verify the change**:
  Run:
  ```bash
  cat /etc/hosts
  ```
