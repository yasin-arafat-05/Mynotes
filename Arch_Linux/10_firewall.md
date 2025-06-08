

<br>

## **1. Dowalod the package to control firewalls**
```bash
sudo pacman -S firewalld
```
<br>

## **2. Stop start restart firewall services.**
<br>

```bash
sudo systemctl start/enable firewalld
sudo systemctl stop/disable firewalld
sudo systemctl status firewalld
sudo systemctl restart firewalld
```
`Enable command run করলে laptop restart করার সাথে সাথে  firewalld এর service গুলো automatically on হয়ে যাবে । কিন্তু, start দিলে, আবার নতুন করে firewalld এর service গুলো চালু  করতে হবে । এইটা start/enable command এর মধ্যে পার্থক্য ।`

<br>

## **03. Check the rules of firewalld:**
<br>



