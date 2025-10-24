<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%
  String name = (String) session.getAttribute("name");
  String enrollment = (String) session.getAttribute("enrollment");

  if (name == null || enrollment == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Select Course | LNCT PYQ Portal</title>
  <link rel="stylesheet" href="course.css">
</head>
<body>

  <div class="header">
    <img src="image/lnct.png" class="lnct-logo" alt="LNCT Logo">
    <input type="text" id="searchBar" class="searchBar" placeholder="Search Course">
    <div class="user-info">
      <h1>Welcome <%= name %></h1>
      <p>Enrollment No: <%= enrollment %></p>
      <h2>LNCT University, Bhopal</h2>
      <p>Select your current course</p>
      <p id="datetime"></p>
    </div>
  </div>

  <div class="semester">
    <div class="semester-box"><a href="sem.jsp">B.Tech - CSE</a></div>
    <div class="semester-box"><a href="btechaiml.jsp">B.Tech - AIML</a></div>
    <div class="semester-box"><a href="mtech.jsp">M.Tech</a></div>
    <div class="semester-box"><a href="bca.jsp">BCA</a></div>
    <div class="semester-box"><a href="mca.jsp">MCA</a></div>
    <div class="semester-box"><a href="bba.jsp">BBA</a></div>
    <div class="semester-box"><a href="mba.jsp">MBA</a></div>
  </div>

  <script>
    document.getElementById("datetime").innerHTML = new Date().toLocaleString();

    document.getElementById("searchBar").addEventListener("keyup", function() {
      let input = this.value.toLowerCase();
      let boxes = document.getElementsByClassName("semester-box");

      for (let i = 0; i < boxes.length; i++) {
        let text = boxes[i].textContent.toLowerCase();
        boxes[i].style.display = text.includes(input) ? "" : "none";
      }
    });
  </script>

</body>
</html>
