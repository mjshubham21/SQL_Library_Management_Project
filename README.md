# 📘 SQL Data Analysis Project by Shubham Pawar  
# 🏛️ Library Management System: Data Insights for Efficient Book Lending

![Project Banner](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/assets/BANNER%20Library%20Management%20Syster%20SQL%20DA.png)

---

## 📌 Project Overview

This project revolves around a simulated **Library Management System** built in **MySQL Workbench**. The system tracks member activity, book lending, employee involvement, and return behavior.

Through a structured set of **20 real-world adhoc queries**, this project demonstrates how SQL can be used to extract valuable business insights, evaluate operational efficiency, and guide data-backed decision-making.

---

## 🔗 [Project Link](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/PROJECT_CODE.sql)

---

## 🔗 Connect with Me

- *mjshubham21* &nbsp; &nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/mjshubham21/)

---

## 🧰 Tech Stack

- 🐬 **MySQL Workbench** – For database design and query execution  
- 💻 **Visual Studio Code + GitHub** – For version control and code management  
- 🧠 **ER Modeling** – For understanding and constructing relationships between entities  

---

## 💼 My Skills

- 📈 **SQL for Business Insights & Analysis**  
- 🧮 **Window Functions, CTEs & Aggregations**  
- 🧑‍💻 **Join Optimization & Date Functions**  
- 📊 **Data Storytelling through Queries**  
- 🐍 **Python for Advanced Analytics** *(future integration)*  

---

## 🎯 Project Goals

### 🧠 Operational Understanding

- Analyze trends in issuing, returning, and managing books  
- Evaluate borrowing behavior and employee productivity  

### 🧍‍♂️ Member Insights

- Rank members based on borrowing activity  
- Track delayed or early returns with precision  
- Understand member loyalty through frequent borrowing  

### 📘 Book Circulation Trends

- Spot most and least issued books  
- Identify books repeatedly borrowed by same member  
- Understand issue-return frequency to manage inventory  

---

## 📊 Insights & Expected Outcomes

- 🕒 **Average return durations** per member to improve book availability  
- 🔄 **Returned vs Not Returned** classification for active lending control  
- 🥇 **Top-performing employees and members** in terms of book engagement  
- 📚 **High-demand books and genres** to prioritize stocking  
- 🔢 **Window functions** (like DENSE_RANK & PARTITION BY) for ranking and running totals  
- 📅 **Monthly trends** for book issues and returns to optimize library staff scheduling

---

## 📚 Library Data Queries (Adhoc Questions Outputs / Project)

> The project is divided into 3 levels of complexity:
> - 🟢 **Basic-Level (1–10)**  
> - 🟡 **Intermediate-Level (11–15)**  
> - 🔴 **Advanced-Level (16–20)**  

---

### 🟢 Basic-Level Adhoc Queries (1–10)

#### 1. List all books that have never been issued.  
![Q1](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q1.png)

#### 2. Find the total number of members registered in the system.  
![Q2](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q2.png)

#### 3. Show all books issued by employee `E106`.  
![Q3](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q3.png)

#### 4. Display the list of books returned in the month of May 2024.  
![Q4](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q4.png)

#### 5. Count how many books each member has issued.  
![Q5](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q5.png)

#### 6. Show the details of members who have never issued any book.  
![Q6](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q6.png)

#### 7. Find the earliest and latest book issue date in the system.  
![Q7](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q7.png)

#### 8. Get the names of employees who issued books to member `C109`.  
![Q8](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q8.png)

#### 9. Display all books that have been returned along with their return dates.  
![Q9](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q9.png)

#### 10. Get the top 5 most recently issued books.  
![Q10](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q10.png)

---

### 🟡 Intermediate-Level Adhoc Queries (11–15)

#### 11. List the number of books issued by each employee.  
![Q11](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q11.png)

#### 12. Show members who have returned all the books they issued.  
![Q12](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q12.png)

#### 13. For each book, show how many times it has been issued.  
![Q13](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q13.png)

#### 14. Find the most active member (who issued the most books).  
![Q14](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q14.png)

#### 15. Display books that have been issued multiple times to the same member.  
![Q15](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q15.png)

---

### 🔴 Advanced-Level Adhoc Queries (16–20)

#### 16. Label books as `Returned`, `Not Returned`.  
![Q16](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q16.png)

#### 17. Use `DENSE_RANK()` to rank members based on number of books issued.  
![Q17](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q17.png)

#### 18. Use `PARTITION BY` to show issue count per member with a running total.  
![Q18](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q18.png)

#### 19. List members who returned books within 7 days of issue.  
![Q19](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q19.png)

#### 20. Calculate the average time between issue and return for each member.  
![Q20](https://github.com/mjshubham21/SQL_Library_Management_Project/blob/main/Code%20Outputs/Q20.png)

---
