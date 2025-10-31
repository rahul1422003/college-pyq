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
<title>Semester 1 | LNCT PYQ Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="sem1.css">
</head>
<body>

  <div class="header">
    <img src="image/lnct.png" alt="LNCT Logo" class="logo">
    <input type="text" id="searchBar" placeholder="Search Subject">
    <div class="title">
      <h1><u>Semester 1</u></h1>
      <h2>LNCT University, Bhopal</h2>
      <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
      <p id="datetime"></p>
    </div>
  </div>

  <div class="subject">
    <div class="box-container">
      <h3>Advanced Physics &
Sustainable Environment</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
       
      </ul>
    </div>

    <div class="box-container">
      <h3>Advanced Calculus</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Decoding Data</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>PPS</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Digital Circuits
&Embedded Systems</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Civil Engineering&
Mechanics</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
       
      </ul>
    </div>
  </div>

  <script>
    document.getElementById("datetime").innerHTML = new Date().toLocaleString();

    document.getElementById("searchBar").addEventListener("keyup", function() {
      let input = this.value.toLowerCase();
      let boxes = document.getElementsByClassName("box-container");
      for (let i = 0; i < boxes.length; i++) {
        let text = boxes[i].textContent.toLowerCase();
        boxes[i].style.display = text.includes(input) ? "" : "none";
      }
    });
  </script>

</body>
</html>
