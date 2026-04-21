<br>
<br>

# `#01: Duel boot arch linux`

<br>
<br>


![image](image/image-7.png)

`Type should be Basic. If not then linux will not be found the formated disk.`

- Remember must download the latest arch linux file.    
```bash
iwctl 
device list # wlan0, wlan1, wlan2 
station wlan0 get-networks
station wlan0 connect "Network_SSID"
pass 
pacman-key --init
pacman -Sy 
pacman -S archinstall
```

```text
/boot -> fat32 -> 1GB
/   -> ext4 -> (50-100)GB
/home -> ext4 -> (rest_of_the_disk)
```
<br>

## Technical Note: Fixing Missing Windows Entry in GRUB Menu (Dual Boot)
### Problem Statement
After a fresh installation of Arch Linux alongside Windows (Dual Boot), two primary issues were encountered:
 1. Boot Priority Issue: The laptop would either boot directly into one OS without showing the GRUB menu, or the menu was not appearing to allow OS selection.
 2. Missing Windows Entry: Even when the GRUB menu was accessible, the Windows Boot Manager was not listed as an option, making it impossible to boot into Windows from GRUB.
### Solution & Process Explanation
To resolve this, we used os-prober, a utility that scans all partitions for other operating systems and adds them to the GRUB configuration.
#### Step 1: Install Necessary Utilities
We needed tools to detect and interact with the Windows file system (NTFS).
```bash
sudo pacman -S os-prober mtools fuse-common
```

 * os-prober: Scans disks for other OSs.
 * mtools & fuse-common: Ensure better compatibility with Windows-formatted drives.
#### Step 2: Enable os-prober in GRUB Configuration
By default, Arch Linux disables os-prober for security reasons. We had to manually enable it.
 * Action: Edited /etc/default/grub.
 * Change: Found the line #GRUB_DISABLE_OS_PROBER=false and uncommented it (removed the #) to ensure it reads:
   GRUB_DISABLE_OS_PROBER=false
#### Step 3: Manually Mount the Windows Partition
os-prober often fails to "see" Windows if the partition isn't actively mounted during the configuration update.
 * Action: Identified the Windows SSD partition (e.g., /dev/sdb3) using lsblk.
 * Action: Mounted it to /mnt:
```bash
   sudo mount /dev/sdb3 /mnt
```

   
   
 * Verification: Ran ls /mnt to ensure the Windows and Users folders were visible.
#### Step 4: Update GRUB Configuration
With the Windows partition mounted and os-prober enabled, we regenerated the main GRUB config file.
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

 * Expected Output: The terminal should display: Found Windows Boot Manager on /dev/sdbX@/EFI/Microsoft/Boot/bootmgfw.efi.
#### Step 5: Finalize Boot Order
To ensure the GRUB menu appears first upon turning on the laptop:
 * Entered BIOS/UEFI Settings.
 * Moved "GRUB" or "Arch Linux" to the top of the Boot Priority list.



