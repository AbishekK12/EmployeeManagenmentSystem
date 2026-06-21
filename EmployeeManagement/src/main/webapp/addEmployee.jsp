
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    background:linear-gradient(135deg,#0f172a,#1e3a8a,#7c3aed);
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

.card{
    width:700px;
    background:rgba(255,255,255,0.12);
    backdrop-filter:blur(15px);
    border-radius:25px;
    padding:35px;
    box-shadow:0 10px 30px rgba(0,0,0,0.4);
    border:1px solid rgba(255,255,255,0.2);
}

.logo{
    text-align:center;
    color:white;
    margin-bottom:20px;
}

.logo i{
    font-size:60px;
    color:#facc15;
}

.logo h1{
    margin-top:10px;
    font-size:32px;
}

.logo p{
    color:#ddd;
}

.form-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
}

.form-group{
    display:flex;
    flex-direction:column;
}

label{
    color:white;
    margin-bottom:8px;
    font-weight:600;
}

input{
    padding:12px;
    border:none;
    border-radius:10px;
    font-size:15px;
}

input:focus{
    outline:none;
    box-shadow:0 0 10px #38bdf8;
}

.full{
    grid-column:1/3;
}

.btn{
    margin-top:20px;
    width:100%;
    padding:14px;
    border:none;
    border-radius:12px;
    background:#22c55e;
    color:white;
    font-size:18px;
    cursor:pointer;
    transition:0.4s;
}

.btn:hover{
    background:#16a34a;
    transform:scale(1.02);
}

.home-btn{
    margin-top:15px;
    display:block;
    text-align:center;
    text-decoration:none;
    color:white;
    background:#2563eb;
    padding:12px;
    border-radius:10px;
}

.home-btn:hover{
    background:#1d4ed8;
}

.footer{
    text-align:center;
    color:#ddd;
    margin-top:20px;
}

</style>

</head>
<body>

<div class="card">

<div class="logo">
    <i class="fas fa-users"></i>
    <h1>Employee Management System</h1>
    <p>Human Resource Management Portal</p>
</div>

<form action="addEmployee" method="post">

<div class="form-grid">

<div class="form-group">
<label><i class="fas fa-user"></i> Employee Name</label>
<input type="text" name="name" required>
</div>

<div class="form-group">
<label><i class="fas fa-calendar"></i> Age</label>
<input type="number" name="age" required>
</div>

<div class="form-group">
<label><i class="fas fa-building"></i> Department</label>
<input type="text" name="department" required>
</div>

<div class="form-group">
<label><i class="fas fa-briefcase"></i> Designation</label>
<input type="text" name="designation" required>
</div>

<div class="form-group">
<label><i class="fas fa-money-bill"></i> Salary</label>
<input type="number" step="0.01" name="salary" required>
</div>

<div class="form-group">
<label><i class="fas fa-envelope"></i> Email</label>
<input type="email" name="email" required>
</div>

</div>

<input type="submit" value="➕ Add Employee" class="btn">

</form>

<a href="index.jsp" class="home-btn">
🏠 Back To Dashboard
</a>

<div class="footer">
    © 2026 Employee Management System
</div>
<%
String msg = request.getParameter("msg");

if ("success".equals(msg)) {
%>
<br>
<div style="background:#22c55e;color:white;padding:12px;
            border-radius:8px;margin-bottom:20px;text-align:center;">
    ✅ Employee Added Successfully
</div>

<%
} else if ("failed".equals(msg)) {
%>

<div style="background:#ef4444;color:white;padding:12px;
            border-radius:8px;margin-bottom:20px;text-align:center;">
    ❌ Failed to Add Employee
</div>

<%
}
%>

</div>

</body>
</html>
