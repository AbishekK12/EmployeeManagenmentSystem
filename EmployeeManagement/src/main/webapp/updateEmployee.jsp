<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

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
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#0f172a,#1e40af,#9333ea);
}

.card{
    width:500px;
    background:rgba(255,255,255,.12);
    backdrop-filter:blur(15px);
    padding:35px;
    border-radius:20px;
    box-shadow:0 10px 25px rgba(0,0,0,.4);
}

.logo{
    text-align:center;
    color:white;
    margin-bottom:25px;
}

.logo i{
    font-size:60px;
    color:#facc15;
}

.logo h2{
    margin-top:10px;
}

.form-group{
    margin-bottom:18px;
}

label{
    color:white;
    display:block;
    margin-bottom:6px;
    font-weight:bold;
}

input,select{
    width:100%;
    padding:12px;
    border:none;
    border-radius:10px;
    font-size:15px;
}

input:focus,select:focus{
    outline:none;
    box-shadow:0 0 8px cyan;
}

.btn{
    width:100%;
    padding:13px;
    border:none;
    border-radius:10px;
    background:#f59e0b;
    color:white;
    font-size:18px;
    cursor:pointer;
}

.btn:hover{
    background:#d97706;
}

.home{
    margin-top:15px;
    display:block;
    text-align:center;
    color:white;
    text-decoration:none;
    background:#2563eb;
    padding:12px;
    border-radius:10px;
}

</style>

</head>
<body>

<div class="card">

<div class="logo">
<i class="fas fa-user-pen"></i>
<h2>Update Employee</h2>
</div>
<form action="updateEmployee" method="post">

<div class="form-group">
<label>Employee ID</label>
<input type="number" name="empId" required>
</div>

<div class="form-group">
<label>Select Field</label>

<select name="choice" id="choice" onchange="showField()" required>

<option value="">-- Select Field --</option>

<option value="1">Employee Name</option>
<option value="2">Age</option>
<option value="3">Department</option>
<option value="4">Designation</option>
<option value="5">Salary</option>
<option value="6">Email</option>

</select>

</div>

<div class="form-group" id="nameField" style="display:none;">
<label>New Employee Name</label>
<input type="text" name="name">
</div>

<div class="form-group" id="ageField" style="display:none;">
<label>New Age</label>
<input type="number" name="age">
</div>

<div class="form-group" id="departmentField" style="display:none;">
<label>New Department</label>
<input type="text" name="department">
</div>

<div class="form-group" id="designationField" style="display:none;">
<label>New Designation</label>
<input type="text" name="designation">
</div>

<div class="form-group" id="salaryField" style="display:none;">
<label>New Salary</label>
<input type="number" step="0.01" name="salary">
</div>

<div class="form-group" id="emailField" style="display:none;">
<label>New Email</label>
<input type="email" name="email">
</div>

<input type="submit" value="Update Employee" class="btn">

</form>

<a href="index.jsp" class="home">
🏠 Back to Dashboard
</a>

<script>

function hideFields(){

    const fields = [
        "nameField",
        "ageField",
        "departmentField",
        "designationField",
        "salaryField",
        "emailField"
    ];

    fields.forEach(function(field){
        document.getElementById(field).style.display = "none";
    });

    // Clear input values
    document.querySelector("input[name='name']").value = "";
    document.querySelector("input[name='age']").value = "";
    document.querySelector("input[name='department']").value = "";
    document.querySelector("input[name='designation']").value = "";
    document.querySelector("input[name='salary']").value = "";
    document.querySelector("input[name='email']").value = "";
}

function showField(){

    hideFields();

    const choice = document.getElementById("choice").value;

    switch(choice){

        case "1":
            document.getElementById("nameField").style.display = "block";
            break;

        case "2":
            document.getElementById("ageField").style.display = "block";
            break;

        case "3":
            document.getElementById("departmentField").style.display = "block";
            break;

        case "4":
            document.getElementById("designationField").style.display = "block";
            break;

        case "5":
            document.getElementById("salaryField").style.display = "block";
            break;

        case "6":
            document.getElementById("emailField").style.display = "block";
            break;
    }
}

window.onload = function(){
    hideFields();
};

</script>
<br>
<%
String msg = request.getParameter("msg");

if ("success".equals(msg)) {
%>
<br>
<div style="background:#22c55e;color:white;padding:12px;
            border-radius:8px;margin-bottom:20px;text-align:center;">
    ✅ Employee Updated Successfully
</div>

<%
} else if ("failed".equals(msg)) {
%>

<div style="background:#ef4444;color:white;padding:12px;
            border-radius:8px;margin-bottom:20px;text-align:center;">
    ❌ Failed to Update Employee
</div>

<%
}
%>
</div>

</body>
</html>
