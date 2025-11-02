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
<title>Semester 5| LNCT PYQ Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="sem1.css">
</head>
<body>

  <div class="header">
    <img src="image/lnct.png" alt="LNCT Logo" class="logo">
    <input type="text" id="searchBar" placeholder="Search Subject">
    <div class="title">
      <h1><u>Semester 5</u></h1>
      <h2>LNCT University, Bhopal</h2>
      <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
      <p id="datetime"></p>
    </div>
  </div>

  <div class="subject">
    <div class="box-container">
      <h3>Agile Methodology</h3>
      <ul>
        <li><a href="pdf/Agile mid1_2_01-Copy.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/agile mid2.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/Agile end sem.pdf">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
       
      </ul>
    </div>

    <div class="box-container">
      <h3>Modern Machine
Learning</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Deep Learning and
Neural Networks</h3>
      <ul>
        <li><a href="pdf/">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Cyber Security</h3>
      <ul>
        <li><a href="pdf/cyber mid1_2_01-Copy.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/cyber mid2.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/cyber endsem.pdf">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
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
