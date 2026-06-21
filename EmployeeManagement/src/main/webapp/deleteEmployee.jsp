<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee</title>

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
}

h2{
	text-align:center;
	color:white;
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
	background:#ef4444;
	border:none;
	border-radius:10px;
	color:white;
	font-size:17px;
	cursor:pointer;
}

button:hover{
	background:#dc2626;
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

<h2>Delete Employee</h2>

<form action="deleteEmployee" method="post">

<input type="number" name="empId"
placeholder="Enter Employee ID" required>

<button type="submit">Delete Employee</button>

</form>

<%
String msg=request.getParameter("msg");

if("success".equals(msg)){
%>

<h3 style="color:lightgreen;text-align:center;">
Employee Deleted Successfully
</h3>

<%
}
else if("failed".equals(msg)){
%>

<h3 style="color:red;text-align:center;">
Employee Not Found
</h3>

<%
}
%>

<a href="index.jsp">Back To Dashboard</a>

</div>

</body>
</html>