<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Registration</title>

<style>
body{
    font-family: Arial;
    background:#eef2f7;
}
.container{
    width:90%;
    margin:30px auto;
}
.card{
    background:white;
    padding:25px;
    margin-bottom:25px;
    border-radius:12px;
    box-shadow:0 0 15px gray;
}
h2{
    color:#1e40af;
    margin-bottom:15px;
}
input{
    width:100%;
    padding:10px;
    margin:8px 0;
}
.btn{
    padding:12px 25px;
    background:#2563eb;
    color:white;
    border:none;
    border-radius:6px;
    font-size:15px;
}
</style>
</head>

<body>

<div class="container">

<form action="save" method="post">

<!-- ================= COMPANY ================= -->
<div class="card">
<h2>🏢 Company Details</h2>

Company Name:
<input type="text" name="companyName">

Location:
<input type="text" name="location">

CEO Name:
<input type="text" name="ceoName">

Username:
<input type="text" name="username">

Password:
<input type="password" name="password">
</div>

<!-- ================= DEVELOPER DEPARTMENT ================= -->
<div class="card">
<h2>💻 Developer Department</h2>

Department Name:
<input type="text" name="devDept.deptName">

Project Name:
<input type="text" name="devDept.projectName">
</div>

<!-- ================= TESTING DEPARTMENT ================= -->
<div class="card">
<h2>🧪 Testing Department</h2>

Department Name:
<input type="text" name="testDept.deptName">

Testing Type:
<input type="text" name="testDept.testingType">

Tools Used:
<input type="text" name="testDept.toolsUsed">
</div>

<div class="card">
<h2>👨‍💻 Developers</h2>

<c:forEach begin="0" end="2" varStatus="i">

Developer Name:
    <input type="text"
           name="devDept.developer[${i.index}].devName">

Experience:
    <input type="text"
           name="devDept.developer[${i.index}].experience">
           
Salary:
    <input type="text"
           name="devDept.developer[${i.index}].salary">

    <hr>
</c:forEach>


</div>

<div class="card">
<h2>🧑‍🔬 Testers</h2>

	<c:forEach begin="0" end="1" varStatus="i">

	Tester Name:
    <input type="text"
           name="testDept.tester[${i.index}].testName">

	Experience:
    <input type="text"
           name="testDept.tester[${i.index}].experience">

	Salary:
    <input type="text"
           name="testDept.tester[${i.index}].salary">

</c:forEach>
	

</div>



<div style="text-align:center">
    <input type="submit" value="Register All" class="btn">
</div>


</form>


</div>

</body>
</html>






