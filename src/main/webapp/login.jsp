<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="login.css">
</head>
<body>

<!-- Top-left LNCT Logo -->
<img src="image/lnct.png" style="position: fixed; top: 0; left: 0; height: 80px; width: 170px;">

<!-- Login Box -->
<div class="box">
    <img src="./image/lnct.png" alt="lnct logo" class="logo">
    <h1>LNCT UNIVERSITY, BHOPAL</h1>
    <form action="loginservlet" method="post">
        <input type="text" name="name" placeholder="Enter your name" required>
        <input type="text" name="enrollment" placeholder="Enrollment number" required>
        <button type="submit">Login</button>
    </form>
</div>


</body>
</html>
