<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Employee</title>

<style>
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:Segoe UI,sans-serif;
}

body{
	display:flex;
	justify-content:center;
	align-items:center;
	height:100vh;
	background:linear-gradient(135deg,#0f172a,#1e3a8a,#7c3aed);
}

.container{
	width:420px;
	padding:30px;
	background:rgba(255,255,255,.12);
	backdrop-filter:blur(15px);
	border-radius:20px;
	box-shadow:0 0 20px rgba(0,0,0,.4);
}

h2{
	color:white;
	text-align:center;
	margin-bottom:20px;
}

input{
	width:100%;
	padding:12px;
	margin:15px 0;
	border:none;
	border-radius:10px;
}

button{
	width:100%;
	padding:12px;
	border:none;
	border-radius:10px;
	background:#22c55e;
	color:white;
	font-size:17px;
	cursor:pointer;
}

button:hover{
	background:#16a34a;
}

a{
	display:block;
	text-align:center;
	margin-top:15px;
	color:white;
	text-decoration:none;
}
</style>

</head>
<body>

<div class="container">

<h2>Search Employee</h2>

<form action="searchEmployee" method="post">

<input type="number" name="empId" placeholder="Enter Employee ID" required>

<button type="submit">Search</button>

</form>

<%@ page import="com.employee.entity.Employee"%>

<%
Employee emp=(Employee)request.getAttribute("employee");

if(emp!=null){
%>

<div class="result">

<h2>Employee Details</h2>

<table>

<tr>
<th>Employee ID</th>
<td><%=emp.getEmpId()%></td>
</tr>

<tr>
<th>Name</th>
<td><%=emp.getEmpName()%></td>
</tr>

<tr>
<th>Age</th>
<td><%=emp.getAge()%></td>
</tr>

<tr>
<th>Department</th>
<td><%=emp.getDepartment()%></td>
</tr>

<tr>
<th>Designation</th>
<td><%=emp.getDesignation()%></td>
</tr>

<tr>
<th>Salary</th>
<td>₹ <%=emp.getSalary()%></td>
</tr>

<tr>
<th>Email</th>
<td><%=emp.getEmail()%></td>
</tr>

</table>

</div>

<%
}
%>

<a href="index.jsp">Back To Dashboard</a>

</div>

</body>
</html>