<br>

# `#01 Remote desktop in arch linux:`

<br>


## Remote Desktop Protocols Overview

### **RDP (Remote Desktop Protocol)**
- **Purpose**: Access Windows desktops graphically
- **Port**: 3389
- **Features**: 
  - Full desktop experience
  - Audio/printing/file sharing
  - Multi-monitor support
- **Best For**: Windows-to-Windows access

### **SSH (Secure Shell)**
- **Purpose**: Secure command-line access
- **Port**: 22
- **Features**:
  - Encrypted terminal access
  - File transfers (SFTP/SCP)
  - Port forwarding
- **Best For**: Server administration, Linux systems

### **VNC (Virtual Network Computing)**
- **Purpose**: Cross-platform screen sharing
- **Port**: 5900+ (5901, 5902, etc.)
- **Features**:
  - Platform independent
  - Shares current desktop session
  - Pixel-based transmission
- **Best For**: Technical support, multi-OS environments

---

# `FreeRDP on Arch Linux: Installation & Usage:`

# `#01. **Installation:**`
```bash
sudo pacman -S freerdp
```

# `#02. **Basic Connection:`
```bash
xfreerdp /v:192.168.1.100 /u:username /p:password /f
```
- `/v`: Server IP/hostname
- `/u`: Username
- `/p`: Password
- `/f`: Full screen

**don't use this:** `Don't give password with password give all of this then press enter then it will ask for password. and don't give space /p: 123 is allowed /p:123 this is allowed.`

# 3. **Windows Domain User (Two Backslashes)**
```bash
xfreerdp /v:192.168.1.100 /f /d:domain /u:domain\\username /p:password
```
- Use double backslash `\\` for domain users
- Example: `/u:corp\\john`

# `#04. **Advanced Options:**`
| Parameter | Function | Example |
|-----------|----------|---------|
| `/multimon` | Multi-monitor support | `xfreerdp ... /multimon` |
| `/sound` | Enable audio | `xfreerdp ... /sound` |
| `/clipboard` | Shared clipboard | `xfreerdp ... /clipboard` |
| `/drive` | Share local folder | `/drive:home,/home/user` |
| `/cert:ignore` | Ignore certificate | `xfreerdp ... /cert:ignore` |

### 6. **Full Command Example**
```bash
xfreerdp \
  /v:windows-pc.example.com:3389 \
  /u:corp\\johndoe \
  /p:MySecret123 \
  /f \
  /sound:sys:alsa \
  /drive:documents,/home/user/Docs \
  /clipboard \
  +fonts \
  /cert:ignore
```
