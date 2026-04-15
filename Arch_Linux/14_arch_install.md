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
