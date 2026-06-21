
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
 <link rel="icon" type="image/png" href="images/ems.png">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:linear-gradient(135deg,#0f172a,#1e293b);
    min-height:100vh;
}

.navbar{
    background:#111827;
    color:white;
    padding:20px;
    display:flex;
    justify-content:center;
    align-items:center;
    gap:15px;
}

.logo{
    font-size:40px;
}

.title{
    font-size:30px;
    font-weight:bold;
}

.container{
    width:90%;
    margin:auto;
    padding-top:50px;
}

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
}

.card{
    text-decoration:none;
    background:white;
    border-radius:20px;
    padding:30px;
    text-align:center;
    transition:0.4s;
    box-shadow:0 10px 20px rgba(0,0,0,.2);
}

.card:hover{
    transform:translateY(-10px);
}

.card h2{
    color:#1e293b;
    margin-bottom:10px;
}

.card p{
    color:#555;
}

.icon{
    font-size:50px;
    margin-bottom:15px;
}

.footer{
    text-align:center;
    color:white;
    margin-top:50px;
    padding:20px;
}

</style>

</head>
<body>

<div class="navbar">
    <div class="logo">👨‍💼</div>
    <div class="title">Employee Management System</div>
</div>

<div class="container">

<div class="cards">

<a href="addEmployee.jsp" class="card">
    <div class="icon">➕</div>
    <h2>Add Employee</h2>
    <p>Add new employee details</p>
</a>

<a href="viewEmployees" class="card">
    <div class="icon">📋</div>
    <h2>View Employees</h2>
    <p>Display all employees</p>
</a>

<a href="searchEmployee.jsp" class="card">
    <div class="icon">🔍</div>
    <h2>Search Employee</h2>
    <p>Find employee by ID</p>
</a>

<a href="updateEmployee.jsp" class="card">
    <div class="icon">✏️</div>
    <h2>Update Employee</h2>
    <p>Modify employee details</p>
</a>

<a href="deleteEmployee.jsp" class="card">
    <div class="icon">🗑️</div>
    <h2>Delete Employee</h2>
    <p>Remove employee record</p>
</a>

</div>

</div>

<div class="footer">
    Employee Management System © 2026
</div>

</body>
</html>
