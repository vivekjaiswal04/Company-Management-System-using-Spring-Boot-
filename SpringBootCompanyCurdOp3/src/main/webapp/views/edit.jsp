<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Company</title>

<style>
body{
    font-family: Arial;
    background:#eef2f7;
}
.container{
    width:60%;
    margin:40px auto;
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
    padding:10px 22px;
    background:#16a34a;
    color:white;
    border:none;
    border-radius:6px;
    font-size:15px;
}
.back{
    background:#2563eb;
    margin-left:10px;
}
.actions{
    text-align:center;
}
</style>
</head>

<body>

<div class="container">

<form action="updateCompany" method="post">

<!-- ===== HIDDEN IDS ===== -->
<input type="hidden" name="companyId" value="${com.companyId}">
<input type="hidden" name="devDept.devDeptId" value="${com.devDept.devDeptId}">
<input type="hidden" name="testDept.testDeptId" value="${com.testDept.testDeptId}">

<!-- ================= COMPANY ================= -->
<div class="card">
<h2>🏢 Company Details</h2>

Company Name:
<input type="text" name="companyName" value="${com.companyName}" required>

Location:
<input type="text" name="location" value="${com.location}" required>

CEO Name:
<input type="text" name="ceoName" value="${com.ceoName}" required>

Username:
<input type="text" name="username" value="${com.username}" readonly>

Password:
<input type="password" name="password" value="${com.password}" required>
</div>

<!-- ================= DEVELOPER DEPARTMENT ================= -->
<div class="card">
<h2>💻 Developer Department</h2>

Department Name:
<input type="text" name="devDept.deptName" value="${com.devDept.deptName}" required>

Project Name:
<input type="text" name="devDept.projectName" value="${com.devDept.projectName}" required>
</div>

<!-- ================= DEVELOPERS ================= -->
<div class="card">
<h2>👨‍💻 Developers</h2>

<c:forEach var="dev" items="${com.devDept.developer}" varStatus="i">

<input type="hidden"
       name="devDept.developer[${i.index}].devId"
       value="${dev.devId}">

Developer Name:
<input type="text"
       name="devDept.developer[${i.index}].devName"
       value="${dev.devName}" required>

Experience:
<input type="text"
       name="devDept.developer[${i.index}].experience"
       value="${dev.experience}" required>

Salary:
<input type="text"
       name="devDept.developer[${i.index}].salary"
       value="${dev.salary}" required>

<hr>
</c:forEach>

</div>

<!-- ================= TESTING DEPARTMENT ================= -->
<div class="card">
<h2>🧪 Testing Department</h2>

Department Name:
<input type="text" name="testDept.deptName" value="${com.testDept.deptName}" required>

Testing Type:
<input type="text" name="testDept.testingType" value="${com.testDept.testingType}" required>

Tools Used:
<input type="text" name="testDept.toolsUsed" value="${com.testDept.toolsUsed}" required>
</div>

<!-- ================= TESTERS ================= -->
<div class="card">
<h2>🧑‍🔬 Testers</h2>

<c:forEach var="t" items="${com.testDept.tester}" varStatus="i">

<input type="hidden"
       name="testDept.tester[${i.index}].testId"
       value="${t.testId}">

Tester Name:
<input type="text"
       name="testDept.tester[${i.index}].testName"
       value="${t.testName}" required>

Experience:
<input type="text"
       name="testDept.tester[${i.index}].experience"
       value="${t.experience}" required>

Salary:
<input type="text"
       name="testDept.tester[${i.index}].salary"
       value="${t.salary}" required>

<hr>
</c:forEach>

</div>

<div class="actions">
    <input type="submit" value="✔ Update Company" class="btn">
    <a href="login" class="btn back">⬅ Back</a>
</div>

</form>

</div>

</body>
</html>
