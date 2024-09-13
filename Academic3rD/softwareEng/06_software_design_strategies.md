
### Software Design Strategies

Software design is an essential phase in software development where the requirements provided by users are transformed into a blueprint for building a functional solution. It involves defining the system’s architecture, components, modules, and interactions. The objective is to create an optimal design that meets user requirements, is easy to maintain, scalable, and efficient.

`(এইটা এমন একটা পার্ট যেখানে, user requirements গুলোকে আমরা ডিজাইন করবো । এমনভাবে যে, যারা কাজ করবে, যেমনঃ বিডিং বানানোর ক্ষেত্রে ডিজাইনরা এমন ভাবে ডিজাইন করবে যাতে যারা কাজ করবে তারা খুব সহজেই কাজ করতে পারবে । এর ক্ষেত্রে design করার কিছু strategie দেখবো আমরা । )`

Here are the common software design strategies:

---

### 1. **Structured Design**

Structured design is centered around solving a complex problem by breaking it down into smaller, manageable sub-problems. It follows the "divide and conquer" strategy, where each sub-problem is solved individually. These smaller components are organized into modules and arranged hierarchically, communicating with each other to form the complete solution.

- **Cohesion**: Refers to how well the elements within a module are related. High cohesion is desirable as it ensures that each module focuses on a single task.
- **Coupling**: Refers to the dependency between different modules. Low coupling is preferred to minimize interdependencies, making the system easier to maintain.

**Key Characteristics**:
- Problem broken into smaller, well-organized solution modules.
- High cohesion and low coupling between modules.

---

### 2. **Function-Oriented Design**

Function-oriented design focuses on dividing the system into smaller sub-systems known as **functions**. Each function performs a specific task, and the entire system is viewed as a collection of these functions working together.

In function-oriented design:
- The **system state** is not the primary focus; instead, the functions are designed to operate on inputs to produce outputs.
- Functions are reusable and can pass data to one another, either through global variables or direct input-output connections.

**Design Process**:
- The system's data flow is represented using **Data Flow Diagrams (DFD)**.
- Each function transforms input data into output, potentially changing the system’s state.
- Functions are described in detail and broken into smaller units based on their operations.

**Key Characteristics**:
- System viewed as a set of functions performing specific tasks.
- Based on input-output transformations rather than state changes.

---

### 3. **Object-Oriented Design (OOD)**

Object-oriented design organizes the system around **objects** rather than functions. Objects are entities with specific attributes (data) and methods (behaviors), and the design focuses on the relationships between these objects. This approach makes it easier to model real-world entities in the software.

#### Key Concepts:
- **Objects**: Represent entities involved in the system, each with attributes and methods (e.g., person, bank, company).
- **Classes**: General templates that define the attributes and methods for objects. An object is an instance of a class.
- **Encapsulation**: Bundling of data (attributes) and methods (functions) together in an object. It restricts external access to the object’s data, promoting **information hiding**.
- **Inheritance**: A mechanism where a subclass inherits properties (attributes and methods) from a parent class, promoting reusability and hierarchical organization.
- **Polymorphism**: Allows methods with the same name to perform different tasks based on the input or context, providing flexibility and code reuse.

**Design Process**:
- Identify the objects based on the requirements or system sequence diagrams.
- Group similar objects into classes.
- Define class hierarchies and relationships among classes.
- Design the overall application framework.

**Key Characteristics**:
- Focus on entities and their interactions (objects).
- Encapsulation, inheritance, and polymorphism are core features.
- Promotes modular, reusable, and maintainable designs.

---

### Summary of Design Approaches:

1. **Structured Design**:
   - Problem divided into smaller modules.
   - Emphasizes high cohesion and low coupling between modules.
   - Follows a top-down, hierarchical approach.

2. **Function-Oriented Design**:
   - Focuses on breaking down the system into smaller, reusable functions.
   - Operates on input-output transformations, ignoring system states.
   - Uses DFDs to represent data flow and changes in the system.

3. **Object-Oriented Design**:
   - Focuses on objects and their attributes, mimicking real-world entities.
   - Promotes encapsulation, inheritance, and polymorphism.
   - Organizes the system into classes and hierarchies for better modularity and reusability.

Each of these strategies provides a structured way to conceptualize and design software systems, catering to different kinds of problems and system requirements.
