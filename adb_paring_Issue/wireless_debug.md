

### **On Your Computer (Linux):**
1. **Check Wi-Fi Connection:**
   - Open a terminal and type the following command to check the current Wi-Fi connection:
     ```
     nmcli device status
     ```
     This will show you the list of connected devices. Look for the Wi-Fi adapter (`wifi`) and note the network name (SSID) it's connected to.

   - Alternatively, you can use:
     ```
     iwgetid
     ```
     This command will display the name of the Wi-Fi network (SSID) your computer is currently connected to.

2. **Check Firewall Status:**
   - You can check if a firewall is enabled using:
     ```
     sudo ufw status
     ```
     If it's active, it may block certain connections. You can temporarily disable it to test if the Wi-Fi pairing works:
     ```
     sudo ufw disable
     ```
     After testing, you can enable it again using:
     ```
     sudo ufw enable
     ```

### **On Your Android Device:**
1. **Check Wi-Fi Connection:**
   - Go to **Settings** > **Wi-Fi** on your Android device.
   - Ensure that the Wi-Fi is turned on and connected to the same network (SSID) as your computer.

### **Confirm Same Network:**
- Ensure both your computer and the Android device are connected to the **same SSID (Wi-Fi network)**. The SSID names should match on both devices.

### **Troubleshooting Different Subnets:**
If both devices are connected to the same SSID but you still face issues, they might be on different subnets. You can check the IP addresses:

1. **On Linux:**
   - Use this command to get your computer's IP address:
     ```
     ip addr show
     ```
     Look for the `inet` address under your Wi-Fi interface (often `wlp2s0` or similar).

2. **On Android:**
   - Go to **Settings** > **Wi-Fi** > (your network name) > **Advanced** (or just tap on the network) and note the **IP address**.

Make sure both IP addresses are within the same subnet range (e.g., `192.168.x.x`).



# ---
# ---
# ---

output of: sudo ufw status

```bash

sudo ufw status
[sudo] password for yasin: 
Status: active

To                         Action      From
--                         ------      ----
8000                       ALLOW       Anywhere                  
8000 (v6)                  ALLOW       Anywhere (v6)             


```


Your firewall is now active, and it currently allows connections on port `8000` for both IPv4 and IPv6.

To enable pairing over Wi-Fi, you may need to allow additional ports related to ADB (Android Debug Bridge). ADB typically uses port **5555** for Wi-Fi debugging. You can allow traffic on this port using the following commands:

```bash
sudo ufw allow 5555
```

Afterward, check the status again:

```bash
sudo ufw status
```

Now, try pairing your device again. If it still doesn't work, please let me know so we can try other steps.


