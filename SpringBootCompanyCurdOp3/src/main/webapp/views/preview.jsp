<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Company Preview</title>

<style>
body{
    font-family: Arial;
    background:#eef2f7;
}
.container{
    width:95%;
    margin:30px auto;
}
.card{
    background:white;
    padding:20px;
    margin-bottom:30px;
    border-radius:12px;
    box-shadow:0 0 15px gray;
}
h2{
    color:#1e40af;
}
table{
    width:100%;
    border-collapse:collapse;
    margin-top:10px;
}
th,td{
    border:1px solid #ccc;
    padding:8px;
    text-align:center;
}
th{
    background:#2563eb;
    color:white;
}
.action-btn{
    padding:6px 12px;
    border-radius:6px;
    color:white;
    text-decoration:none;
    font-size:13px;
}
.edit{
    background:#16a34a;
}
.delete{
    background:#dc2626;
}
</style>
</head>

<body>

<div class="container">

<c:forEach var="cmp" items="${Data}">

<!-- ================= COMPANY ================= -->
<div class="card">
<h2 class="link-primary">🏢 Company Details</h2>

<p><b>Company Name:</b> ${cmp.companyName}</p>
<p><b>Location:</b> ${cmp.location}</p>
<p><b>CEO Name:</b> ${cmp.ceoName}</p>
<p><b>Username:</b> ${cmp.username}</p>

<!-- ACTION BUTTONS -->
<a href="editCompany?id=${cmp.companyId}" class="action-btn edit">✏ Edit</a>
<a href="deleteCompany?id=${cmp.companyId}"
   class="action-btn delete"
   onclick="return confirm('Are you sure you want to delete this company?');">
   🗑 Delete
</a>
</div>

<!-- ================= DEVELOPER DEPARTMENT ================= -->
<div class="card">
<h2>💻 Developer Department</h2>

<p><b>Department Name:</b> ${cmp.devDept.deptName}</p>
<p><b>Project Name:</b> ${cmp.devDept.projectName}</p>

<table>
<tr>
    <th>Developer Name</th>
    <th>Experience</th>
    <th>Salary</th>
</tr>

<c:forEach var="dev" items="${cmp.devDept.developer}">
<tr>
    <td>${dev.devName}</td>
    <td>${dev.experience}</td>
    <td>${dev.salary}</td>
</tr>
</c:forEach>

</table>
</div>

<!-- ================= TESTING DEPARTMENT ================= -->
<div class="card">
<h2>🧪 Testing Department</h2>

<p><b>Department Name:</b> ${cmp.testDept.deptName}</p>
<p><b>Testing Type:</b> ${cmp.testDept.testingType}</p>
<p><b>Tools Used:</b> ${cmp.testDept.toolsUsed}</p>

<table>
<tr>
    <th>Tester Name</th>
    <th>Experience</th>
    <th>Salary</th>
</tr>

<c:forEach var="t" items="${cmp.testDept.tester}">
<tr>
    <td>${t.testName}</td>
    <td>${t.experience}</td>
    <td>${t.salary}</td>
</tr>
</c:forEach>

</table>
</div>

</c:forEach>

</div>

</body>
</html>
