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
<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome | LNCT PYQ Portal</title>
  <link rel="stylesheet" href="sem.css">
</head>
<body>
  <div class="header">
 <input type="text" id="searchBar" class="searchBar" placeholder="Search Semester">

  <img src="image/lnct.png" style="position: fixed;top: 50px; left: 0; height: 80px; width: 200px;">
    <h1><u>B.Tech CSE</u></h1>
    <h2>LNCT University, Bhopal</h2>
    <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
    <p>Select your semester to view Previous Year Question Papers</p>
  <p id="datetime"></p>
  </div>
  
  
  
<script>
  document.getElementById("datetime").innerHTML = new Date().toLocaleString();
  document.getElementById("searchBar").addEventListener("keyup", function() {
      let input = this.value.toLowerCase();
      let boxes = document.getElementsByClassName("semester-box");

      for (let i = 0; i < boxes.length; i++) {
        let text = boxes[i].textContent.toLowerCase();
        if (text.includes(input)) {
          boxes[i].style.display = "";
        } else {
          boxes[i].style.display = "none";
        }
      }
    });
</script>

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
  
</body>
</html>
