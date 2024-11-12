

On Arch Linux, you can clean up unnecessary files using a combination of manual checks, built-in tools, and package manager commands. Here’s a guide:

### 1. **Clear Package Cache**
Arch Linux stores downloaded packages in a cache (`/var/cache/pacman/pkg`). Over time, this can accumulate and use a lot of space.

To **remove unused packages** from the cache:
```bash
sudo pacman -Sc
```

To **remove all cached packages** (only if you are sure you won't need to downgrade):
```bash
sudo pacman -Scc
```

To **remove only old versions**, keeping the latest two versions:
```bash
sudo paccache -r
```

### 2. **Remove Unused Packages (Orphans)**
These are packages installed as dependencies that are no longer needed.

List orphaned packages:
```bash
pacman -Qdt
```

Remove orphaned packages:
```bash
sudo pacman -Rns $(pacman -Qdtq)
```

### 3. **Clean Unused Logs**
System logs can also take up a lot of space. You can clean old logs using `journalctl`.

To remove logs older than 2 weeks:
```bash
sudo journalctl --vacuum-time=2weeks
```

To limit the size of logs (e.g., 100 MB):
```bash
sudo journalctl --vacuum-size=100M
```

### 4. **Delete AUR Build Files**
If you use an AUR helper like `yay`, it stores build files in a cache.

To clean the cache for `yay`:
```bash
yay -Sc
```

### 5. **Remove Temporary Files**
Temporary files in `/tmp` and `/var/tmp` can be cleaned up.

To delete files in `/tmp`:
```bash
sudo rm -rf /tmp/*
```

To delete files in `/var/tmp`:
```bash
sudo rm -rf /var/tmp/*
```

### 6. **Check Disk Usage**
Use `ncdu` (a disk usage analyzer) to see what’s taking up space. Install it with:
```bash
sudo pacman -S ncdu
```

Run it with:
```bash
sudo ncdu /
```

### 7. **Clear Browser Cache**
Browsers like Chrome and Firefox store cache files that can consume a lot of space.

For Chrome:
```bash
rm -rf ~/.cache/google-chrome/
```

For Firefox:
```bash
rm -rf ~/.cache/mozilla/
```

### 8. **Uninstall Unused Applications**
List all installed packages:
```bash
pacman -Qe
```

Remove any applications you don’t use:
```bash
sudo pacman -R package-name
```

