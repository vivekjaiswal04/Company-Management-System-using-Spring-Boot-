<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Login</title>

<style>
body{
    font-family: Arial, sans-serif;
    background:#e0f2fe;
}
.login-box{
    width:360px;
    margin:100px auto;
    padding:30px;
    background:white;
    border-radius:12px;
    box-shadow:0 0 15px gray;
}
h2{
    text-align:center;
    color:#1e40af;
    margin-bottom:20px;
}
input{
    width:100%;
    padding:10px;
    margin:10px 0;
}
.btn{
    width:100%;
    padding:12px;
    background:#16a34a;
    color:white;
    border:none;
    border-radius:6px;
    font-size:15px;
}
.link{
    text-align:center;
    margin-top:15px;
}
a{
    text-decoration:none;
    color:#2563eb;
}
</style>
</head>

<body>

<div class="login-box">
    <h2>Company Login</h2>

    <form action="login" method="post">

        Username:
        <input type="text" name="username" required>

        Password:
        <input type="password" name="password" required>

        <input type="submit" value="Login" class="btn">
    </form>

    <div class="link">
        New company? <a href="reg">Register here</a>
    </div>
</div>

</body>
</html>
