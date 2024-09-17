

# chapter: 01

# 1.1 What is Software?

- `Program:` A step by step instructions to perform a specific task on a computer in a programming language is called program, i.e. set of instructions.

- `Software:` Is a program along with proper documentation (requirement analysis, design,
coding, testing) and user manuals which mainly includes installation guide and other manuals.

- `Software = Program + documentation`

`Research level এ কোন কাজ যেমন হাতে কলমে লিখার পর তার documentation না বানানো পযন্ত কোন দাম থাকে না । তেমনভাবে, শুধু কোড লিখলেই একটা Software হয় না এর documentation and user manuals থাকতে হয় । যেইটা আমরা কোন Software install করার সময় না পড়ে click করতে যায় । `


# 1.2 Software Componants.

### A program is a subset of software and it becomes software only if documentation and an operating procedure manual are prepared.

**i)** `Program`

Coding.

**ii)** `Documents`

Software documentation consist all the description, programs, graphics and instructions pertaining to design, coding, testing and preparation of software.

**iii)** `Operating Procedure(User Manual & Operational Manual)`

Provides information about what software is how to work with it how to install it on your system and how to control all the activities of the software. 


# 1.3 Software Crisis.

**i)** `Problems with software?`

- The major problem with current scenario in Software industry is, software usually
overrun their development cost, they exceed their development duration limits, are
usually of poor quality.

- As long as there were no machines, programming was no problem at all; when we had a
few weak computers, programming became a mild problem, and now we have gigantic
computers, programming has become an equally gigantic problem.— Edsger Dijkstra, The
Humble Programmer (EWD340), Communications of the ACM.

`আগের দিনে 20GB একটা মেমরির এখন ভ্যালু ছিল। কিন্তু, বর্তমানে, hardware developement হয়েছে, একইভাবে software এর তেমন developement হয়েছে । আমাদের এই complex harware maintain করে software বানানোর জন্য টাইম, টাকা বেশি যাচ্ছে । কিন্তু, software তেমন develop হচ্ছে না ।   `

### `In short: `

- Increasing Demand
- Increasing Complexity
- Increasing Challenges
- Same workforce
- Same method
- Same tools

`To solve the problem we are talking above that's why we will read software engineering.`

# 1.4 What is Software Engineering?

In software industry we understand that there is an urgent need to use a proper strategies,
process and development cycles so that we can produce, or we can design quality products
that are within budget, with in time and must satisfy the requirement of their users.

`Software:`  Software is a set of instructions or programs that tell a computer how to perform specific tasks. It includes applications, operating systems, and other programs that help users interact with the computer and perform various functions.

`Engineering:`  It is the application of scientific and practical knowledge to invent, design, build, maintain and improve frameworks, processes, etc.

`Software Engineering is the application of engineering principles to the design, development, testing, deployment, and maintenance of software. It involves using scientific and practical knowledge to create reliable, efficient, and scalable software systems that meet user needs and solve real-world problems.`


# 1.5 Characteristics of Software.

### i) Software Development vs. Manufacturing:
1.Software is crafted through a process of coding and development. <br>
2.Unlike physical products, it isn't produced in factories through a
manufacturing process.

`manufacturing process এ যে কোন products তৈরি হয় ফ্যাক্টরিতে যেমনঃ লাইট, ফ্যান, টিভী ইত্যাদি । But in the case of software we don't need manufacturing. `


### ii) No Physical Wear and Tear:
1.Software doesn't deteriorate over time like physical objects.<br>
2.Its performance doesn't degrade due to physical use.

`Physical product like car, এইটার একটা দেওইয়া থাকে, দিন দিন এইটা deteriorate(অধঃপতন) হতে থাকে । পাশাপাশি এর performance ও প্রভাব পড়ে।  `


### iii) Custom-Built Nature:
1.Most software is specially designed to meet specific needs.<br>
2.It's often not just a combination of pre-existing components but requires
unique coding and design.

`আমরা একটা laptop বানাবো, কিন্তু, কোন কোম্পানি একটা পুরো একটা ল্যাপটপের সবকিছু বানায় না । তারা নানাকিছু নানা জায়গা থেকে এনে assamble করে । কিন্তু, software এর ক্ষেত্রে এমন কিছু হয় না । When we are making a software for a specific person.  `


### iv) Intangibility of Software:
1.Software can't be touched or handled physically.<br>
2.It exists as code and functions within computers or digital devices.


# 1.6 Major Problems in Software Development:

### i) Inadequate(অপর্যাপ্ত) Requirements Gathering:
• Ambiguous or incomplete requirements<br>
• Lack of communication between stakeholders

`আমরা কোন শার্ট কিনতে গিয়েছি । তখন, যদি শার্ট সম্পর্কে না থাকলেও, অনেকগুলো শার্ট দেখানোর পর customer idea হয়ে যায় । কিন্তু, কোন specific software developoment ক্ষেত্রে এমন হয় না । requirements গুলো কি কি আমরা সেইগুলোয় ভালো করে জানতে পারি না, অর্থাৎ, Ambiguous or incomplete requirements । তাই, সময়ের সাথে সাথে বাড়ে সাথে সাথে টাকা, development time বাড়ে। `

`কোন এর জন্য একটা বানাবো । কিন্তু কথা হচ্ছে এখন আমরা কার সাথে কথা বলবো কি কি থাকতে পারে । যারা ব্যবহার করবে ছাত্ররা তাদেরও requirements থাকতে পারে । তাই, Lack of communication between stakeholders হয় । `

### ii) Poor Project Management:
• Inadequate planning, monitoring, and control<br>
• Lack of risk assessment and mitigation<br>
• Multiplicity of software development life cycle<br>
• Selection of wrong technology or tool for development

`Software তো আর করা হয় না । এখানে আমাদের সব কিছু planning, monitoring and control করা লাগে । risk assessment শুরুতে কোন সমস্যায় পড়লে, সেইটা পরে করে নেওয়া যাবে এইটা কিন্তু পর করতে গেলে হয়তো, আরো অনেক অনেক সমস্যা দেখা দিবে । কোন সমস্যার জন্য অনেক C,C++,java,python প্রোগামিং ভাষা আছে । ভুল ভাষা সিলেক্ট করা ।  `


### iii) Insufficient Time and Budget:
• Unrealistic deadlines and resource constraints<br>
• Inefficient resource allocation and prioritization

`Customer unrealistc deadlines and Inefficient resource, বাজেট কম দেওয়া । `


### iv) Lack of Skilled Personnel:
• Inadequate expertise in the development team<br>
• High turnover rates and loss of experienced staff

`Fresher থাকতে পারে । তাদের অভিজ্ঞতা কম । `

### v) Resistance to Change:
• Difficulty in adapting to new technologies or processes<br>
• Reluctance to modify established practices or mindsets<br>
• Rapid technology advancement

`Resistance to change, অন্যান্য  technologies এর থেকে Software এ advancement খুব তাড়াতাড়ি হয় । ৫,৬ মাস পর আপডেট আসে ।  `

# 1.6 Need of software Engineering:

**i) Handling Big Projects:** Corporation must use SE to handle large projects without any issues. 

**ii) To manage the cost:** Software engineering programmers plan everything and reduce all those things that are not required.

**iii) To decrease time:** It will save a lot of time if you are developing Software using a Software engineering technique.

**iv) Reliable Software:** It is the company's responsibility to deliver software products on schedule and to address any defects that may exist.

**v) Effectiveness:** Effectiveness results from things being created in accordance with teh software standards.




<br>

---
---
---
---

<br>


# `# Software Development Paradigm: `

### 1. **Software Development Paradigm**:
This is the **big picture** that includes the entire software creation process. Think of it as the "engineering" side of software development, where all the steps from idea to the final product are considered. Here's what happens in this paradigm:
- **Requirement Gathering**: Before coding starts, you need to **understand the problem** and figure out exactly what the software should do. This involves talking to clients or stakeholders to gather the features and functionalities they want.
- **Software Design**: After gathering requirements, you create a **plan or blueprint** of how the software will be structured and function. This includes deciding on the system architecture, the flow of data, and how different parts of the system will work together.
- **Programming**: Once you have the design, developers start **coding** the solution based on the blueprint. This is where the actual implementation of the software happens.

In summary, the **Software Development Paradigm** is about applying engineering principles to plan and build the software efficiently.

---

### 2. **Software Design Paradigm**:
This is a **subset** of the development paradigm, and it focuses specifically on **designing and maintaining** the software. The goal here is to ensure that the software works well, both during and after development. Here are the key parts:
- **Design**: This is where you create a detailed **structure** for the software, laying out how it will function internally. This includes breaking the system down into smaller parts or modules and deciding how they will interact with each other.
- **Maintenance**: After the software is built and deployed, it needs to be **maintained**. This means fixing bugs, making improvements, and ensuring that the software continues to meet users' needs as things change.
- **Programming**: This involves writing the code according to the design, making sure it follows the plan and that everything works as expected.

The **Software Design Paradigm** is all about **structuring** the software properly so that it is easy to develop, maintain, and update in the future.

---

### 3. **Programming Paradigm**:
This is the **most detailed** level, and it focuses purely on the **coding and testing** of the software. It's the practical, hands-on part where the software gets built. Here’s what happens in this paradigm:
- **Coding**: Developers write the actual code in a programming language, creating the features and functionalities that the software needs.
- **Testing**: After coding, the software needs to be **tested** to ensure it works correctly and that there are no bugs or errors. Testing is done at different levels—unit testing, integration testing, and system testing.
- **Integration**: Once all the individual parts or modules are coded, they need to be **combined** (integrated) into a working system. The integration process checks if all the parts of the software work together properly.

In essence, the **Programming Paradigm** is about **building** the software piece by piece and ensuring it works as a complete system.

---

### **How the Paradigms Work Together**:
- The **Software Development Paradigm** is the broad framework that covers the entire process.
- The **Software Design Paradigm** focuses on the structural aspect of creating and maintaining the system.
- The **Programming Paradigm** is where the actual coding, testing, and integration take place.

All three paradigms work together to make sure that software is planned, built, and maintained in an organized, efficient, and reliable way.


<br>

---
---
---
---

<br>

# 1.7 Characteristics of Good Software:

** i) Operational: **
- Budget
- Efficiency 
- Usability
- Dependability
- Correctness
- Functionality
- Safety
- Security

** ii) Transitional: **
- Interoperability
- Reusability
- Portability
- Adaptability

** iii) Maintenance:**
- Fexibility
- Maintainability
- Modularity
- Scalability




# `# Software Evolution: `

### **Software Evolution**
Software evolution refers to the **process of continuously improving and modifying software** over time, from its initial development to subsequent updates, fixes, and maintenance. It ensures that the software stays relevant and meets users' needs as their requirements and the environment change. Here's how it works:

1. **Initial Development**: Software is first developed based on user requirements, following software engineering principles like requirement gathering, system design, coding, and testing.
   
2. **Prototyping and Feedback**: Developers often build a **prototype** early in the development process and share it with users to collect feedback. This allows developers to make necessary adjustments to meet the users’ expectations better.

3. **Maintenance and Updates**: Once the software is deployed, the evolution process continues through **regular updates** and maintenance. This includes fixing bugs, adding new features, and adapting to changing user requirements or new technology.

4. **Adapting to Change**: As technology evolves and business needs change, software must also evolve. Instead of rebuilding the software from scratch, developers usually **modify the existing software** to meet the new requirements in a cost-effective way.

In short, software evolution is a **continuous process** that spans the entire lifecycle of the software, from its creation to its eventual retirement.

---

<br>
<br>
<br>

### ` # Lehman’s Laws of Software Evolution`

**Manny Lehman** formulated several laws related to the evolution of **E-type software** (embedded-type), which describes software that interacts with the real-world environment and must adapt to external changes like new laws, taxes, or business regulations.


### **S-type, P-type, and E-type Software**
Lehman categorized software into three types based on their **evolutionary behavior**:

1. **S-type (Static-type) Software**:
   - This is the simplest type of software, where both the **requirements** and the **solution** are well-defined and understood from the start. Once developed, S-type software doesn’t evolve much, as it performs fixed tasks.
   - **Example**: A simple calculator program.

2. **P-type (Practical-type) Software**:
   - This type of software follows a set of **procedures** to solve a problem. The **requirements** can be clearly defined, but the solution may not be immediately obvious. Over time, the software might evolve as the solution is refined.
   - **Example**: A video game, where specific rules are set, but gameplay evolves as the game is developed.

3. **E-type (Embedded-type) Software**:
   - E-type software is the most complex, as it works within and interacts with a real-world environment. It continuously evolves to keep up with **external changes** (laws, regulations, business needs). This type of software undergoes the most evolution over time.
   - **Example**: A financial or trading system that needs constant updates based on real-world economic changes.

---

In summary, **software evolution** is essential for keeping software relevant and effective as user needs, technologies, and external environments change. Lehman’s laws provide important insights into how and why E-type software evolves over time, offering guidance on managing complexity, maintaining quality, and adapting to continuous change.


<br>
<br>
<br>

