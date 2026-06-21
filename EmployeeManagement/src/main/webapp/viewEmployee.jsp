<%@page import="java.util.List"%>
<%@page import="com.employee.entity.Employee"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employees</title>

<style>

body{
	font-family:Segoe UI;
	background:#f5f5f5;
	padding:30px;
}

h2{
	text-align:center;
	margin-bottom:20px;
}

table{
	width:100%;
	border-collapse:collapse;
	background:white;
	box-shadow:0 0 10px gray;
}

th{
	background:#2563eb;
	color:white;
	padding:12px;
}

td{
	padding:10px;
	text-align:center;
}

tr:nth-child(even){
	background:#f2f2f2;
}

a{
	display:block;
	width:200px;
	margin:20px auto;
	text-align:center;
	padding:12px;
	background:#2563eb;
	color:white;
	text-decoration:none;
	border-radius:5px;
}

</style>

</head>
<body>

<h2>Employee Details</h2>

<table border="1">

<tr>

<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Department</th>
<th>Designation</th>
<th>Salary</th>
<th>Email</th>

</tr>

<%

List<Employee> list=(List<Employee>)request.getAttribute("employees");

if(list!=null){

for(Employee emp:list){

%>

<tr>

<td><%=emp.getEmpId()%></td>
<td><%=emp.getEmpName()%></td>
<td><%=emp.getAge()%></td>
<td><%=emp.getDepartment()%></td>
<td><%=emp.getDesignation()%></td>
<td><%=emp.getSalary()%></td>
<td><%=emp.getEmail()%></td>

</tr>

<%
}
}
%>

</table>

<a href="index.jsp">Back To Dashboard</a>

</body>
</html>