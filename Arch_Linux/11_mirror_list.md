<br>

```bash
 kate /etc/pacman.d/mirrorlist
```

<br>

### **Generate:**

**update:**
```bash
sudo pacman -Sy chaotic-mirrorlist
```

**Based on country:**
```bash
sudo reflector --country 'Bangladesh,India' --age 50 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```

**top 20**
```bash
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```

**rackspace available or not**
```bash
curl -I https://mirror.rackspace.com/archlinux/extra/os/x86_64/extra.db
```


