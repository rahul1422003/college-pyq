<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%
  String name = (String) session.getAttribute("name");
  String enrollment = (String) session.getAttribute("enrollment");
  String semester = (String) session.getAttribute("semester"); // Added semester

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
  <link rel="stylesheet" href="course.css?v=3">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

  <header class="header">
    <div class="top-bar">
      <div class="logo-container">
        <img src="image/lnct.png" alt="LNCT Logo" class="logo">
      </div>
      <div class="search-container">
        <input type="text" id="searchBar" placeholder="Search Course">
      </div>
    </div>

    <div class="header-content">
      <h1>Welcome <%= name %></h1>
      <p>Enrollment No: <%= enrollment %></p>
      <% if(semester != null) { %>
        <%= semester %>
      <% } %>
      <h2>LNCT University, Bhopal</h2>
      <p>Select your current course</p>
      <p id="datetime"></p>
    </div>
  </header>

  <div class="semester">
    <div class="semester-box"><a href="sem.jsp">B.Tech-CSE</a></div>
    <div class="semester-box"><a href="Aimlsem.jsp">B.Tech-AIML</a></div>
    <div class="semester-box"><a href="Mtech.jsp">M.Tech</a></div>
    <div class="semester-box"><a href="BCA.jsp">BCA</a></div>
    <div class="semester-box"><a href="MCA.jsp">MCA</a></div>
    <div class="semester-box"><a href="BBA.jsp">BBA</a></div>
    <div class="semester-box"><a href="MBA.jsp">MBA</a></div>
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
