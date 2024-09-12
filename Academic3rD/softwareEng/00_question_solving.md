
# `# 1. 18-19 Mid:  `

---

### **Question 1**:  
**Software engineering is not only concerned with issues like system heterogeneity, business and social change, trust, and security, but also with ethical issues affecting the domain. Give some examples of ethical issues that have an impact on the software engineering domain.**

#### **Solution**:  
In the software engineering domain, ethical issues arise due to various scenarios where decisions affect users, companies, and society. Some ethical issues include:

1. **Data Privacy**:  
   Many software applications deal with personal data (e.g., social media, health apps, etc.). The ethical responsibility to safeguard this data from unauthorized access or misuse is crucial. Engineers must ensure compliance with privacy regulations (e.g., GDPR) and avoid leaking or misusing user data.

2. **Security Breaches**:  
   A lack of robust security in software can lead to hacks, data breaches, or other security vulnerabilities that harm users and businesses. Ethical software engineers must prioritize secure coding practices and regularly update systems to prevent breaches.

3. **Intellectual Property Violations**:  
   Using proprietary or copyrighted code or algorithms without permission is unethical. Software engineers need to respect intellectual property and ensure that the codebase doesn't violate licenses.

4. **Artificial Intelligence and Bias**:  
   AI systems often make decisions that affect individuals' lives (e.g., hiring algorithms, facial recognition). If these systems are biased, they can cause harm. Ethical considerations involve ensuring fairness, transparency, and accountability in AI models.

5. **Environmental Impact**:  
   Energy-intensive systems like data centers and blockchain technologies have a significant environmental footprint. Engineers should consider the sustainability of the systems they design and optimize them for energy efficiency.

---

### **Question 2**:  
**Imagine that a government wants a software program that helps to keep track of the utilization of the country's vast mineral resources. Although the requirements put forward by the government were not very clear, a software company was tasked with the development of a prototype. The government found the prototype impressive and asked it to be extended to be the actual system that would be used. Discuss the pros and cons of taking this approach.**

#### **Solution**:  
The approach of extending a prototype to a full system has its advantages and disadvantages:

**Pros**:
1. **Cost and Time Efficiency**:  
   Since a prototype already exists, extending it into a full system will likely save both time and costs involved in developing a new system from scratch.

2. **Familiarity with Requirements**:  
   The developers have already worked on the prototype and have an understanding of the system's requirements. This can reduce the time needed to analyze and define new requirements.

3. **Government Satisfaction**:  
   The government has already expressed satisfaction with the prototype, which means the risk of rejection or dissatisfaction is minimized if the extension meets expectations.

4. **Iterative Development**:  
   By building on the existing prototype, the team can take an iterative approach, adding features incrementally while ensuring the government’s needs are continuously met.

**Cons**:
1. **Prototype Limitations**:  
   Prototypes are often built with limited features, scalability, and robustness. Extending a prototype to a full system can result in performance issues and scalability problems if the prototype was not designed with a full-scale system in mind.

2. **Undefined Requirements**:  
   The initial requirements were unclear, and extending the prototype might lead to scope creep or misunderstandings regarding new features. This could result in a mismatched final product.

3. **Technical Debt**:  
   Prototypes are typically quick and dirty implementations, not intended for production use. If the team extends it directly, it may accumulate technical debt, leading to maintenance challenges in the future.

4. **Risk of Overlooking Critical Features**:  
   A prototype might lack important features that are necessary for a full-fledged system. If these features are not properly integrated during the extension, it could cause operational failures or inefficiencies.

---

### **Question 3**:  
**When emergency changes have to be made to systems, the system software may have to be modified before changes to the requirements have been approved. Suggest a model of a process for making these modifications that will ensure that the requirements document and the system implementation do not become inconsistent.**

#### **Solution**:  
In situations where emergency changes need to be made to a system, and these changes must be implemented before updating the requirements document, it's crucial to follow a model that ensures consistency between the documentation and the implementation. A suitable model for this scenario would be:

**Emergency Change Management Process**:

1. **Initiate Emergency Change Request**:
   - The need for an emergency change is identified and recorded. A detailed change request is raised with information about the reasons for the emergency and the potential impact on the system.

2. **Rapid Impact Assessment**:
   - A team of senior engineers quickly assesses the impact of the change on the system architecture, dependencies, and performance. They ensure that the emergency fix will not introduce critical flaws elsewhere in the system.

3. **Approval from Change Control Board (CCB)**:
   - Even in an emergency, there should be a brief meeting of a Change Control Board (or an authorized individual) to approve the emergency change. The CCB's role is to balance the urgency of the situation with risk considerations.

4. **Implement the Emergency Fix**:
   - The change is implemented as quickly as possible by the development team. The focus is on addressing the immediate issue without compromising the overall integrity of the system.

5. **Post-Implementation Review**:
   - After the emergency fix has been deployed and the system has stabilized, the change is reviewed to ensure it was effective and did not cause any unintended consequences.

6. **Requirements and Documentation Update**:
   - Immediately after the change is verified, the requirements document and system design documents are updated to reflect the new implementation. This ensures that the system documentation remains consistent with the actual codebase.

7. **Regression Testing**:
   - A comprehensive set of regression tests is run to ensure that the emergency change has not affected other system functionalities.

8. **Retrospective**:
   - A retrospective is held to analyze what caused the emergency, how it was handled, and what steps can be taken to prevent similar situations in the future. This may lead to process improvements.

By following this structured model, emergency changes can be managed in a way that minimizes risk, ensures quick resolution of the issue, and maintains consistency between the requirements and the system implementation.





