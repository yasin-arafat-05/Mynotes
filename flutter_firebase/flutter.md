<br>
<br>

# `#Flutter FireBase Connection:`

<br>
<br>

Flutter app কে **Firebase CLI** দিয়ে connect করার জন্য Arch-based Linux আর Windows-এ প্রায় একই ধরনের command ব্যবহার হয়। নিচে দুইটার জন্য ধাপে ধাপে দিয়েছি:

---

## 🔹 ১. Firebase CLI Install

### Arch-based Linux:

```bash
# Node.js ইনস্টল করতে হবে (LTS version)
sudo pacman -S nodejs npm

# Firebase CLI install
sudo npm install -g firebase-tools
```

### Windows (PowerShell as Admin):

```powershell
# প্রথমে Node.js (LTS) ডাউনলোড ও ইনস্টল করতে হবে https://nodejs.org থেকে

# তারপর Firebase CLI install
npm install -g firebase-tools
```

---

## 🔹 ২. Firebase Login

Linux/Windows দুটাতেই এক রকম:

```bash
firebase login
```

👉 ব্রাউজার ওপেন হবে, Google account দিয়ে লগইন করতে হবে।

---

## 🔹 ৩. Flutter Project কে Firebase এর সাথে Connect করা

প্রথমে আপনার Flutter project এ Firebase CLI দিয়ে setup করুন:

```bash
dart pub global activate flutterfire_cli
```

PATH এ যোগ করার জন্য (Linux এ):

```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

Windows এ (PowerShell এ):

**Set the path**

---

## 🔹 ৪. Firebase Configure in Flutter Project

প্রোজেক্ট ফোল্ডারে গিয়ে রান করুন:

```bash
flutterfire configure
```
<br>

Somtimes, it give error to crete a new project from cli in this case, 1st 
create the project from website then configure it from cli.

<br>

👉 এরপর CLI আপনাকে project select করতে বলবে (Firebase Console থেকে তৈরি করা project)। <br>
👉 `android`, `ios`, `web`, `windows` এর জন্য আলাদা config ফাইল generate হবে।

---

## 🔹 ৫. Run Project

```text
Follow the documentation: **flutter fire** how to configure it with applications.
```

---

