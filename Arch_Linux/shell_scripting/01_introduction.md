<br>
<br>

# `Shell Scripting: `

<br>
<br>

## **#01 Linux OS building blocks: (ASK)**

- A -> Applications
- S -> Shell (control the kernerls to done a specific work, do automation etc.)
- K -> Kernels (write in c programming lanugage)
`Kernels interact with hardware`


For interacting with shell in linux we have, shell command. For printing something we use `echo` for making a directory we have `mkdir`. If in a file, extentions with `.sh` we write shell command then we can call this a shell scripts.

**Shell Evolution in linux:**
- First, Steve Bourne helps to make linux shell
   In,  `/bin/sh` folder
- then, Same person make Bourne Again Shell(Bash)
   In, `/bin/bash`
- then came, csh,ksh,fish etc.

<br>
<br>

## **#02 Requirements:**
- nano or vim editor:
- vim:
    - I (insert mode)
    - Esc (Escape)
    - :wq (write and quit)
<br>
<br>

## **#03 Fist line of .sh**

```bash
#!/bin/bash
```
`The first line, told the interpreture it's a bash script.`

<br>

## **#04 Change Permission:** 

`When we make a .sh file. We don't have permission to execute it. So we need to change permission.`

- 7: RWX
- 5: RX
- 4: R 

```bash 
chmod 754 <file_name>
```

<br>

## **#05 Run the .sh file:** 

```bash
./file_name.sh
```

<br>