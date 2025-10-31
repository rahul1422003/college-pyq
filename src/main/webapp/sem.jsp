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
  <title>Welcome | LNCT PYQ Portal</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="sem.css">
</head>
<body>

  <div class="header">
    <div class="top-bar">
      <input type="text" id="searchBar" placeholder="Search Semester">
      <img src="image/lnct.png" alt="LNCT Logo" class="logo">
    </div>

    <h1>B.Tech-CSE</h1>
    <h2>LNCT University, Bhopal</h2>
    <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
    <p>Select your semester to view Previous Year Question Papers</p>
    <p id="datetime"></p>
  </div>

  <div class="semester">
    <div class="semester-box"><a href="sem1.jsp">Semester 1</a></div>
    <div class="semester-box"><a href="sem2.jsp">Semester 2</a></div>
    <div class="semester-box"><a href="sem3.jsp">Semester 3</a></div>
    <div class="semester-box"><a href="sem4.jsp">Semester 4</a></div>
    <div class="semester-box"><a href="sem5.jsp">Semester 5</a></div>
    <div class="semester-box"><a href="sem6.jsp">Semester 6</a></div>
    <div class="semester-box"><a href="sem7.jsp">Semester 7</a></div>
    <div class="semester-box"><a href="sem8.jsp">Semester 8</a></div>
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
