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
<title>Semester 4 | LNCT PYQ Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="sem1.css">
</head>
<body>

  <div class="header">
    <img src="image/lnct.png" alt="LNCT Logo" class="logo">
    <input type="text" id="searchBar" placeholder="Search Subject">
    <div class="title">
      <h1><u>Semester 4</u></h1>
      <h2>LNCT University, Bhopal</h2>
      <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
      <p id="datetime"></p>
    </div>
  </div>

  <div class="subject">
    <div class="box-container">
      <h3>Advance Java</h3>
      <ul>
        <li><a href="pdf/ECLS mid1 sem1_2_01-Copy.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/ECLS mid2 sem1_2_01-Copy.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/ECLS end sem1_2_01-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Compiler Design</h3>
      <ul>
        <li><a href="pdf/maths M1 sem1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/M1  mid2 sem1.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/Maths end sem1.pdf">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>SEPM</h3>
      <ul>
        <li><a href="pdf/BEEE mid1 sem1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/BEEE mid2 sem1.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/BEEE endsem1_2_01-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Ada</h3>
      <ul>
        <li><a href="pdf/CA mid1 sem1_2_01-Copy.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/CA mid2 sem1_2_01-Copy.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/CA end sem1_2_01-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="#">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Web Technology</h3>
      <ul>
        <li><a href="pdf/ME mid1 sem1_2_01-Copy.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/ME mid2 sem1.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/ME end sem1_2_01-Copy.pdf">📘 End Sem PYQ</a></li>
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
