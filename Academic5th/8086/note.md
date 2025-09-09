<br>

**Topics:**
- 01: Introduction 
- 02: Pipelining
- 03: Memory Banking
- 04: Memory Segmentation
- 05: 8086 Arch
- 06: Flag
- 07: Addressing Mode and Stack

<br>
<br>

## `#01: Introduction` 
<br>
<br>

![image](img/img01.jpg)

![image](img/img11.png)

<br>

![image](img/img02.jpg)

![image](img/img03.jpg)

![image](img/img11.jpg)

![image](img/img04.jpg)


<br>
<br>

# `#02: Pipelining` 
<br>
<br>


![image](img/img05.jpg)


<br>
<br>

# `#03: Memory Banking` 
<br>
<br>


![image](img/img06.jpg)

![image](img/img07.jpg)


<br>
<br>

# `#04: Memory Segmentation` 
<br>
<br>

![image](img/img08.jpg)


## `#Why Real Mode Memory Addressing is Used:`
The **8086 microprocessor** has a **16-bit architecture**. This means it can work with 16-bit memory addresses. However, a 16-bit address can only access $2^{16}$ or **64 KB** of memory. The 8086 was designed to use a much larger **1 MB** of physical memory.

To overcome this limitation, Intel developed a technique called **segmentation**. This is what `"Real mode memory addressing"` is all about. It allows the 16-bit processor to access 1 MB of memory using a combination of two 16-bit values: a **segment address** and an **offset address**.

#### How it Works: Segment + Offset
The total memory space (1 MB) is divided into smaller chunks called **segments**. Each segment is **64 KB** in size. The **segment register** (like CS, DS, SS) holds the starting address of a segment. The **offset register** (like IP, SI, DI) holds the distance from that starting address.

To calculate the final physical memory address, the processor uses the following formula:

**Physical Address = (Segment Address × 10h) + Offset Address**

For example, a segment address of `2000h` and an offset of `0005h` would give a physical address of:

$(2000h \times 10h) + 0005h = 20000h + 0005h = 20005h$


This system allowed the 8086 to access the full 1 MB of memory, which was a significant amount at the time. This memory management method is why topics like **segment registers (CS, DS, SS, ES)** and **pointer/index registers (IP, SP, SI, DI)** are essential to understanding the 8086.


## `#Limitations of Real Mode an Introduction of Protected Mode:`

If we build a computer with a 64-bit architecture, we theoretically need $2^{64}$ bytes of RAM. Since buying that much RAM is impossible, we can use a smaller amount (like 4 GB or $2^{32}$ bytes) and still run the system effectively thanks to **Protected Mode**. This would not have been possible if we had used an addressing scheme like the **8086's Real Mode**.


## `#Protected Mode and Virtual Memory:`

**Protected Mode** supports **Virtual Memory**. This is a technique where the operating system can use a portion of the hard drive or SSD as a temporary extension of the physical RAM.

* A modern 64-bit processor has the potential to address up to **16 Exabytes ($2^{64}$ bytes)** of memory, an amount far beyond any practical or affordable physical RAM.
* With Protected Mode, the OS can manage this vast address space and map it to a much smaller amount of physical RAM and a file on your hard drive (the page file). This allows you to run large programs that require more memory than you have physically installed.


### Real Mode's LimitationYour logic is sound because 

In contrast, if we were to apply the **Real Mode** addressing scheme to a 64-bit architecture, we would be limited to a mere **1 MB ($2^{20}$ bytes)** of memory. This is because Real Mode's design, based on the **segment:offset** addressing scheme, physically restricts the accessible memory space. There is no support for virtual memory or any advanced memory management to overcome this limitation.

In short, your analysis is spot-on: **Protected Mode allows us to utilize the powerful addressing capabilities of a modern CPU with a limited amount of physical RAM, a feat that would be impossible under Real Mode's restrictive design.**




<br>
<br>

# `#05:8086 Architecture Diagram` 
<br>
<br>

**Why there are two part of 8086?**

- Cause for pipelining, see the lecture 02. To speed up the process. Here, BUI(Bus Interface Unit) is for fetching data from memory and EU(Exection unit) what we see in our 
pipelining lecture. 

![image](img/ALU_block.gif)
`If there any sturucture like the above image in our microprocessor architecture, there will perform some operation like addition. This type of circuit is called arithemetic circuit. Both of the arithemetic circuit is not ALU. In BIU we calculate the physical address of our memory. Don't think it's a complitated thing. At the end it's a processor. What a processor do, fetch, decode and executute instructions.`


## `BIU: BUS Interfetch Unit:`
Take an example we have a 1TB hard disk. There are one trillion address. Do we remember the address? No, we just go to that folder and open a specific file. And that's the virtual address. Cause, we give the folder name and file name. In the ssd's memory there is no folder name and file. There are just 1 trillon memory address. In 8086 we do the same thing here, we give the segment address(16bits) and offset address(16bits). Then from this address our microporcessor calculate the real physical address. When our EU exectue 
an instruction in that time our BIU calculate the physical address of the next instructions. Here, (CS,SS,DS,ES) is not the segment that we read in memeory segmentation. 
Memory segment present in the memory. But, here (CS,SS,DS,ES) is segment registers. And, Code Segment Registers contains the beginning address of Code Segment that are present in the memory. Similly, for Stack Segment, Data Segment and Extra segment. Hence, we can say that, segment register contain the segmentation address. IP means instructions  pointers, it contains the the offset address of segments. Now, CS,SS,DS,ES contains segment address and they will not change. But the IP will be change. It fetch the offset address that what need to be execture next. In that time EU execture the current process. Then, we give the 
segment address and offset address to BIU, then it calculate it's physical address. And then through data bus it fetch the instruction from the memory(There is not memory inside 8086,here memory RAM). Then for pipepine we immedietly not execture that current instruction. In pipelining concpet, we read that address are pre-fetch. Then, this pre-fetch address is store in 6-byte prefetch-queue(1st in 1st out).  

![image](img/img09.jpg)

Now, the size of prefetch-queue is of 6 bytes.

![image](img/img09.png)

i) MOV BL, CL (BL registers get the value of CL registers.). <br>
ii) MOV BL, 25H (BL registers get the value of 25H). <br>
iii) MOV BX,2000H (BX register get the value of 2000H) <br>

This is all assembly language, then assembler convert it machine language. And put 
the program in to the memory. Now this machine language contains 0's and 1's and this 
is equvalent to our instruction and this is called opcode (operational code). Then, 
we can say every instruction has its own unique opcode. But the problem is, in the second instruction 25H is an number. But our opcode does not contian the number. It's just contain the information about which operation will be perform like: add, sub etc. and their corresponding registers. Now, our 1st instruction contain only opcode. 2nd instruction contains register info and a 8 bit or 1 byte operator. 3rd instruction contains about register info and 16bits or 2bytes operator. That's why our instruction 
size should be different size. And the maximum size of our instruction is 6bytes . That's why we have 6 bytes queue. Now, while executing an instruction the next 6 bytes of the program are store into the 6-byte prefetch queue. Now, from this queque instuction will go in the execution units. The question is how the queque will refill?? Yessss! 8086 is an 16 bits processor means it's have 16bits data bus. In 1 cycle it will contains 16bits or 2bytes. When, there will absence of 2bytes in the pre-fetch queque then cpu automatically fill up this queue again. But, our biggest instruction can be of 6bytes. Prefetch queque does not care this conditions. 


![image](img/img10.png) <br>
Normally, a program execute in sequential manners. But sometimes we have jumping operations (go to statement). Like in the above image instrucitons 1 is exectuting currently, but the next instruction is 9 then the pipeline fails when there is a branch. And immediately flush the 6bytes from queue then the processor goes to the new location and fetch the 6bytes of instructions into the queue.

Summary:
- BIU, calculate PA.
- Fetch instruction from memory by the help of databus.
- Store the fetch instruction into 6bytes queue.
- Manage the queue when there is a jumping operations.


## `Control sections:`
Our, ALU can perform addition, subtraction and many more operations. But, who will control this operation?? Yes! control sections. Control section fetch instruction for 6bytes queue and decode the instruction where the alu will do addition, multiplication subtraction etc.

<br>

## `EU: Execution Unit`

In, EU there is also a table, at the down of the table, we have, (SP,BP,SI,DI) are offset registers. And, (AH-8bits,AL-8bits)=AX(16-bits),BX,CX,DX are called General Purpouse Registers. Like, we sum two number, 4 and 5, 1st we take them into two registers then we add them and the result (4+5)=9 is also save into a registers and then we display that registers. In this seniro General Purpouse registers come into picture. `Here, U,L is Lower bank and upper bank.`

- Ax = 1234 (16bits number). Here, 34 is LowerBank will store in AL, and 12 Higher Bank 
will store in AH.  Okay. let's see some instructions:



<br>
<br>

# `#06: Flags` 
<br>
<br>

![image](img/flag_01.jpg)

![image](img/flag_02.jpg)

![image](img/flag_03.jpg)

![image](img/flag_04.jpg)

![image](img/flag_05.jpg)


<br>
<br>

# `#07: Addressing Mode and Stack` 
<br>
<br>

![image](img/ad_01.jpg)

![image](img/ad_02.jpg)

![image](img/ad_03.jpg)

![image](img/ad_04.jpg)

![image](img/ad_05.jpg)

![image](img/ad_06.jpg)

![image](img/ad_07.jpg)

![image](img/ad_08.jpg)


<br>




