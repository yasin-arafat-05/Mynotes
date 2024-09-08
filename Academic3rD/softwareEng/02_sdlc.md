
# 2. SOFTWARE DEVELOPMENT LIFE CYCLE:

• Software development organization follows some process when developing a software product,in mature organization this is well defined and managed.In SDLC we development software in a systematic and disciplined manner. SDLC will define entry and exit for every stage. It makes assessment possible, time prediction, cost prediction, scheduling, to identify faults early possible.Selection of a correct development model play an important role in cost, quality, overall success of the project.
SDLC framework includes the following steps:

`Software development model something like programming language , যদি না আমরা correct programming lanuge select করি তাহলে আমরা efficient model পাবো না ।  `


### 1. Feasibility(সম্ভাব্যতা) study:
- Find abstract definition of the problem
- Majorly checking the financial and technical feasibility
- Analysis of cost and befit ratio
- Checking availability of infrastructure and human resource
- Examination of alternative solution strategies

`আমরা আমরা যেই বিষয়ের উপর software বানাবো সেই সম্পকে হাকলা ধারনা নিব । তারপর, আমরা financial and technical feasibility করবো । সেই প্রবলেমটা যদি software বানিয়ে সমাধান করা কষ্টসাধ্য হয়ে যায়, তাহলে সেক্ষেত্রে, alternative solution দিতে পারি । `

`Feasibility study করার পর আমরা মোটামুটি শিউর যে আমরা কাজটা নিতেছি এর পরের কাজ টা হচ্ছে, Requirement analysis and specification বের করা । `

### 2. Requirement analysis and specification
- Try to understood the exact and complete requirement of the customer and document
them properly.
- Try to collect and analysis all data related to the project.
- In last, a large document will be written in the natural language which will describe what the system will do without describing it how, called SRS Software Requirement
Specification.
- Very critical phase because, a small error hear can result of sever problem in later stages

`customer exactly কি চাচ্ছে তা শুনে document করি । এরপর data collect and analysis করা । এমন একটা document বানানো natural language এ যাতে  বুঝতে পারে আমরা কি কি নিয়ে কাজ করবো । And lastly, this is very critical phase . `

`এর পর আমরা coding করা শুরু করবো ? না । আমরা designing করবো । এখানে, Requirement অনুয়ায়ী structure তৈরি করবো। কোন programming language ব্যবহার করবো তা ঠিক করবো । কোন ধরনের algorithmic বা architecture ব্যবহার করবো সেইটা ঠিক করবো ।  `

### 3. Designing
- We transform the requirements into a structure that is suitable for implementation of the code in a specific programming language.
- Overall architecture and the algorithmic strategy are chosen (Coupling and cohesion).
- Lastly will prepare a document called SDD (software design description), which will
describe how the system will perform functionality.


### 4. Coding
- Goal of coding is to translate the design of the system into a code of
programming language.
- It affects both testing and maintenance, so also critical feature.
- We will be discussing some guidelines for how to write maintainable and
readable code.

### 5. Testing
- Because of human errors there will be a bug or fault in the code and
if that bug/fault is executed it become a failure.
- Software testing is a process of executing a program with the
intention of finding bugs or fault in the code.

`উপরের (1-4) step গুলো Human দ্বারা সম্পন্ন করা হয়েছে তাই এতে errors থাকবে সেই গুলোকে  reduce করার জন্য Testing করি । Bug কে remove করা মানে হচ্ছে debug করা ।`

### 6. Implementation
- Software is installed on the user site and training of the user
and how requirement check is done.

`Software বানানোর পর আমরা সরাসরি user কে দিয়ে দিতে পারি না । কারণ, তাদের কাছে proper knowledge থাকবে না software operator করার জন্য । কোথায় কীভাবে কাজ করতে হবে তা আমরা Implementation এর মাধ্যমে দেখিয়ে দিব । `

### 7. Maintenance
• Any change made in the software after its official release is called
maintenance. It could be because of various reasons.
• Adaptive
• Corrective
• Perfective



# 2.1 Software delvelopment life cycle models:
- Waterfall models
- Rad models
- Spiral models
- V-models
- Intremental models
- Agile models
- Iterative models
- Bigbang models

(Waterfall Model,
Iterative models,
Spiral models,
V-models,
Bigbang models,
)


# 2.1.1 Waterfall Model:
-  Developed in the 1970s by Winston W. Royce.
- Inspired by manufacturing and construction processes, where each step relies on the
completion of the previous one.

`ধরি, Muanfacturing construction compnay তে একটা প্রডাক্ট বানানো হচ্ছে । সেখানে, রুম নাম্বার ১২ তে কোন কাজ হচ্ছে এর পর সেইটা ১৩ নাম্বার রুমে যাচ্ছে । অর্থাৎ, যদি প্রডাক্ট টা প্রথমে ১২ নাম্বার রুমে না যেতে ১৩ নাম্বারে যায় তাহলে আমাদের কাজ সঠিক ভাবে হবে না । Waterfall Model সেমভাবেই কাজ করে ।`


