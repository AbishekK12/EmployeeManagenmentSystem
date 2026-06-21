# 👨‍💼 Employee Management System

A Java-based Employee Management System built using **Java Servlets, JSP, JDBC, MySQL, and Apache Tomcat**. This application allows users to manage employee records through a simple and responsive web interface.

---

## 🚀 Features

- ➕ Add Employee
- ✏️ Update Employee
- 🔍 Search Employee by ID
- 📋 View All Employees
- ❌ Delete Employee
- 🖥️ Responsive JSP UI
- 🗄️ MySQL Database Integration

---

## 🛠️ Technologies Used

- Java
- JSP (JavaServer Pages)
- Servlets
- JDBC
- MySQL
- Apache Tomcat 9
- HTML5
- CSS3
- Eclipse IDE

---

## 📂 Project Structure

```
EmployeeManagement/
│
├── src/main/java
│   ├── com.employee.dao
│   ├── com.employee.entity
│   ├── com.employee.servlet
│   └── com.employee.util
│
├── src/main/webapp
│   ├── images
│   ├── addEmployee.jsp
│   ├── updateEmployee.jsp
│   ├── searchEmployee.jsp
│   ├── viewEmployees.jsp
│   ├── deleteEmployee.jsp
│   └── index.jsp
│
└── pom.xml
```

---

## ⚙️ Prerequisites

Before running the project, make sure you have:

- Java JDK 8 or above
- Eclipse IDE
- Apache Tomcat 9
- MySQL Server
- Maven

---

## 🗄️ Database Setup

Create a database named:

```sql
CREATE DATABASE employeedb;
```

Create the employee table:

```sql
CREATE TABLE employee(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    age INT,
    department VARCHAR(100),
    designation VARCHAR(100),
    salary DOUBLE,
    email VARCHAR(100)
);
```

Update the database credentials in:

```
DBConnection.java
```

Example:

```java
private static final String URL = "jdbc:mysql://localhost:3306/employeedb";
private static final String USER = "root";
private static final String PASSWORD = "your_password";
```

---

## ▶️ Running the Project

1. Clone the repository

```bash
git clone https://github.com/your-username/EmployeeManagement.git
```

2. Import the project into Eclipse.

3. Configure Apache Tomcat.

4. Update MySQL credentials.

5. Run the project.

6. Open:

```
http://localhost:8080/EmployeeManagement/
```

---

## 📸 Screenshots

You can add screenshots here.

### Dashboard

```
(Add Screenshot)
```

### Add Employee

```
(Add Screenshot)
```

### View Employees

```
(Add Screenshot)
```

### Search Employee

```
(Add Screenshot)
```

---

## 📌 Future Enhancements

- Login Authentication
- Role-Based Access
- Employee Profile Picture
- Pagination
- Export to PDF/Excel
- Email Notifications
- REST API Integration

---

## 👨‍💻 Author

**Abishek K**

GitHub: https://github.com/AbishekK12

---

## 📄 License

This project is licensed under the MIT License.
