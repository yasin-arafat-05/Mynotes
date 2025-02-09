
<br>
<br>

# `# ls -lart command and CHMOD command:`

<br>
<br>

### `ls -lart` কমান্ড কী এবং এটি থেকে কী জানা যায়

`ls -lart` কমান্ডটি ফাইল এবং ডিরেক্টরির তালিকা দেখানোর জন্য ব্যবহৃত হয়। এই কমান্ডে:

- `l` ফ্ল্যাগ: দীর্ঘ (long) ফরম্যাটে দেখায়, অর্থাৎ প্রতিটি ফাইল বা ডিরেক্টরির অনুমতি (permission), মালিকানা (ownership), আকার (size), এবং তারিখ দেখায়।
- `a` ফ্ল্যাগ: সব ফাইল (লুকানো ফাইলসহ, যেমন `.bash_profile`) দেখায়।
- `r` ফ্ল্যাগ: রিভার্স অর্ডারে দেখায় (সর্বশেষ পরিবর্তিত ফাইল বা ডিরেক্টরি শেষে দেখায়)।
- `t` ফ্ল্যাগ: তারিখ অনুসারে সাজায় (সবচেয়ে পুরনো ফাইল প্রথমে)।

### উদাহরণ হিসেবে আউটপুট বিশ্লেষণ
```plaintext
-rw-r--r-- 1 yasin yasin        57 May 21  2023 .bash_profile
```
এই লাইনে যা আছে:

1. **`-rw-r--r--`**: এটি ফাইলের অনুমতি নির্দেশ করে। 
   - `-`: এটি একটি সাধারণ ফাইল নির্দেশ করে (ডিরেক্টরি হলে `d` থাকবে)।
   - `rw-`: মালিক (owner) `yasin` পড়তে (read) এবং লিখতে (write) পারে।
   - `r--`: গ্রুপ (group) `yasin` শুধুমাত্র পড়তে পারে।
   - `r--`: অন্যান্য ব্যবহারকারী (others) শুধুমাত্র পড়তে পারে।

2. **`1`**: এটি লিঙ্কের সংখ্যা (hard link)।
3. **`yasin yasin`**: প্রথমটি মালিক (owner) এবং দ্বিতীয়টি গ্রুপ।
4. **`57`**: ফাইলের আকার (size)।
5. **`May 21  2023`**: ফাইলটি সর্বশেষ পরিবর্তিত তারিখ।
6. **`.bash_profile`**: ফাইলের নাম।

```plaintext
drwxr-xr-x 1 root root 30 Nov 25 19:57 volumes
```
এই লাইনে:
- **`d`**: এটি একটি ডিরেক্টরি।
- **`rwxr-xr-x`**: এটি ডিরেক্টরির অনুমতি।
  - `rwx`: মালিক (root) ডিরেক্টরিটি পড়তে (read), লিখতে (write), এবং এক্সেস করতে (execute) পারে।
  - `r-x`: গ্রুপ (root) পড়তে এবং এক্সেস করতে পারে, কিন্তু লিখতে পারে না।
  - `r-x`: অন্যান্য ব্যবহারকারী পড়তে এবং এক্সেস করতে পারে।

---

<br>

---

## `chmod` => Change Mode  দিয়ে অনুমতি পরিবর্তন করা:

`chmod` কমান্ড ফাইল বা ডিরেক্টরির অনুমতি পরিবর্তন করতে ব্যবহৃত হয়। এর সিনট্যাক্স:

```bash
chmod <permissions> <file_or_directory>
```

#### উদাহরণ
1. **অক্টোয়াল (octal) নোটেশন ব্যবহার করে:**
   - **`chmod 755 filename`**: 
     - `7` = `rwx` (owner এর জন্য পূর্ণ অনুমতি)।
     - `5` = `r-x` (group এর জন্য পড়া ও এক্সেস)।
     - `5` = `r-x` (others এর জন্য পড়া ও এক্সেস)।
   - উদাহরণ:
     ```bash
     chmod 755 volumes
     ```

2. **লেটারাল নোটেশন ব্যবহার করে:**
   - **`chmod u+rwx,g+rx,o+rx filename`**:
     - `u` = owner
     - `g` = group
     - `o` = others
   - উদাহরণ:
     ```bash
     chmod u+rwx,g+rx,o+rx volumes
     ```

---

### **অনুমতির অর্থ ব্যাখ্যা**
`drwxr-xr-x`-এর প্রতিটি অংশ:
- **`d`**: এটি একটি ডিরেক্টরি।
- **`rwx` (Owner)**:
  - `r` = পড়া (read)।
  - `w` = লেখা (write)।
  - `x` = এক্সেস (execute)।
- **`r-x` (Group)**:
  - `r` = পড়া (read)।
  - `x` = এক্সেস (execute)।
- **`r-x` (Others)**:
  - `r` = পড়া (read)।
  - `x` = এক্সেস (execute)।


### **একটি উদাহরণ:**

1. ডিরেক্টরির অনুমতি দেখা:
   ```bash
   ls -lart
   ```

2. একটি ডিরেক্টরির অনুমতি ৭৭৭ (সবাইকে পূর্ণ অনুমতি) সেট করা:
   ```bash
   chmod 777 volumes
   ```

3. শুধুমাত্র মালিকের জন্য লেখা (write) অনুমতি সরানো:
   ```bash
   chmod u-w volumes
   ```

4. ফলাফল পরীক্ষা:
   ```bash
   ls -lart
   ```