
# `#Chapter: 02`

## 1. Relational Model Concepts
The relational model, developed by E.F. Codd, is the foundation of modern database systems. It organizes data into **relations** (tables), where:

`অ্যাট্রিবিউট (কলাম): এন্টিটির বৈশিষ্ট্য (যেমন, নাম, বয়স)।`
- **Attributes** (columns) represent properties of an entity.
- **Tuples** (rows) represent individual records.
- **Domain** defines the set of valid values for an attribute (e.g., integers, strings).
- Each relation has a **schema** (structure) and an **instance** (data at a given time).

In a **hospital database**:
- Table: `Patient(patient_id, name, age, diagnosis)`.
- Schema: Defines `patient_id` (integer), `name` (string), `age` (integer), `diagnosis` (string).
- Tuple: `(P001, "Ayesha Khan", 30, "Flu")` represents one patient.
- Domain: `age` might be restricted to 0–150.


**Application to Questions**:
- **2.1**: Identify primary keys by ensuring each tuple is unique (e.g., `person_name` in `employee`).
- **2.10**: Understand that a **relation** is the table itself, while the **relation schema** is its structure (attributes and domains).

---

## 2. Keys:

### [notes_Constraint_Integrity_Constraints](https://yasinarafat.gitbook.io/mynotes/dbms/rdbms-and-mysql)
and  Read the key_pdf from sobuj_sir_note/mid

**Application to Questions**:
- **2.1**: `employee`: `person_name`; `works`: `(person_name, company_name)`; `company`: `company_name`.
- **2.4**: If `instructor.name` is unique, it’s a superkey, but `ID` might be preferred as the primary key.
- **2.11**: In `advisor`, if a student can have multiple advisors, `s_id` alone isn’t enough; `(s_id, advisor_id)` might be the primary key.
- **2.12**: Identify primary and foreign keys in the bank database (e.g., `branch_name` for `branch`, `loan_number` for `loan`).

---

## 3. Integrity Constraints
Constraints are predefined rules applied to the attributes (columns) and tuples (rows) of relations (tables) in a relational database to ensure,
- Data Integrity: Ensuring data is accurate and consistent.
- Consistency: Maintaining valid relationships between tables.
- Validity: Preventing incorrect or meaningless data entries.

**Condition to do constraints:** <br>
**Domain Constraints**: Attribute values must belong to their domain (e.g., `salary` must be a positive number). <br>
**Key Constraints**: Primary keys must be unique and non-null. <br>
**Referential Integrity**: Foreign keys must reference existing primary keys in the referenced table. <br>
**Entity Integrity**: Primary key attributes cannot be null. <br>

**Detailed Explanation**: <br>
- **Domain Constraints**: Prevent invalid data (e.g., a `city` attribute can’t be a number).
- **Key Constraints**: Ensure no two tuples have the same primary key value.
- **Referential Integrity**: If `instructor.dept_name` is a foreign key referencing `department.dept_name`, inserting an `instructor` with `dept_name='Physics'` requires `Physics` to exist in `department`.
- **Entity Integrity**: Ensures primary keys are always defined (e.g., no `instructor` tuple can have a null `ID`).
- Violations occur when:
  - Inserting a tuple with an invalid foreign key.
  - Deleting a referenced tuple (e.g., deleting a `department` tuple referenced by `instructor`).

**Real-Life Example**:
In a **restaurant database**:
- Table: `Order(order_id, customer_id, item, price)`.
- Domain Constraint: `price` must be a positive number.
- Key Constraint: `order_id` is unique.
- Referential Integrity: `customer_id` must exist in `Customer(customer_id, name)`.
- Entity Integrity: `order_id` cannot be null.

**Application to Questions**:
- **2.2**: Inserting `instructor` with `dept_name` not in `department` or deleting a `department` tuple referenced by `instructor` causes violations.
- **2.12**: Identify foreign keys (e.g., `loan.branch_name` references `branch.branch_name`).

---

## 4. Relational Algebra

`my_previous_note = Relation Algebra`

**Application to Questions**:
- **2.6**: Employee queries:
  - a. Π_person_name(σ_city='Miami'(employee)).
  - b. Π_person_name(σ_salary>100000(works)).
  - c. Π_person_name(σ_city='Miami'(employee) ⨝_person_name=person_name σ_salary>100000(works)).
- **2.7**: Bank queries:
  - a. Π_branch_name(σ_branch_city='Chicago'(branch)).
  - b. Π_ID(σ_branch_name='Downtown'(loan) ⨝_loan_number=loan_number borrower).
- **2.9**: Division for students taking all Comp. Sci. courses.

---

## 5. Schema and Instance 

### **1. Database Schema**  
- The **schema** is the **logical design** or **blueprint** of a database.  
- It defines the **structure** of the database, including:  
  - Tables (relations)  
  - Attributes (columns)  
  - Data types (e.g., integer, string, date)  
  - Constraints (e.g., primary keys, foreign keys, unique constraints)  
- **Does not contain actual data**—only the rules for storing and organizing data.  
- **Example Schema (SQL-like definition):**  
  ```sql
  CREATE TABLE Student (
      student_id INT PRIMARY KEY,
      name VARCHAR(50),
      age INT,
      department VARCHAR(30)
  );
  ```

### **2. Database Instance**  
- The **instance** (or **database state**) refers to the **actual data** stored in the database at a **specific moment in time**.  
- It changes frequently due to **insertions, deletions, and updates**.  
- **Example Instance (Data in the `Student` table):**  

  | student_id | name    | age | department |
  |------------|---------|-----|------------|
  | 101        | Alice   | 20  | CSE        |
  | 102        | Bob     | 22  | EEE        |
  | 103        | Charlie | 21  | CSE        |



---



**Application to Questions**:
- **2.10**: Explain that `employee(person_name, street, city)` is a relation schema, while its data (e.g., `("John Doe", "123 Main St", "Miami")`) is the instance.
- **2.13**: Construct a schema diagram for the bank database, showing tables and relationships.

---

#### 6. Null Values
Null values indicate missing or unknown data. They affect queries and constraints.

**Detailed Explanation**:
- Null is not the same as 0 or an empty string; it means “no value.”
- Example: In `employee`, `street` might be null if an employee hasn’t provided an address.
- Nulls complicate queries (e.g., `salary = NULL` is invalid; use `IS NULL`).
- Nulls can cause issues with primary keys (entity integrity) and joins.

**Real-Life Example**:
In a **job application database**:
- Table: `Applicant(applicant_id, name, phone, email)`.
- Instance: `(A001, "Rahim", NULL, "rahim@email.com")` → Phone is unknown.

**Bangla Explanation**:
**নাল ভ্যালু** অজানা বা অনুপস্থিত ডাটা নির্দেশ করে। এটি কোয়েরি এবং কনস্ট্রেইন্টকে প্রভাবিত করে।
**উদাহরণ**: `Applicant(applicant_id, name, phone, email)` টেবিলে:
- `(A001, "Rahim", NULL, "rahim@email.com")` → ফোন অজানা।

**Application to Questions**:
- **2.16**: Nulls arise from:
  - Optional fields (e.g., `phone` not provided).
  - Missing data during collection (e.g., `salary` unknown).

---

### Applying to Exam Questions
To ace your exam:
1. **Memorize Schemas**: Know the structure of `employee`, `bank`, and `university` databases (e.g., attributes, primary keys, foreign keys).
2. **Practice Relational Algebra**: Write queries for 2.6, 2.7, 2.8, 2.14, 2.15, 2.18 step-by-step:
   - Identify the target attributes (project).
   - Filter with conditions (select).
   - Join tables as needed.
3. **Understand Constraints**: For 2.2, 2.3, 2.12, think about what breaks uniqueness or referential integrity.
4. **Keys and Schemas**: For 2.1, 2.4, 2.11, 2.12, 2.13, ensure you can identify and justify primary and foreign keys.
5. **Division**: For 2.9, practice division for “all” queries (e.g., students taking all courses).

