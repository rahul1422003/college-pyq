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
        <li><a href="pdf/ad java mid1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/Ad Java sec mid sem4_1.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/End sem pyq sem4_2_01 advance Java end sem pyq sem4-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Compiler Design</h3>
      <ul>
        <li><a href="pdf/cd mid1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/CD sec mid sem4_2_01-Copy.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/End sem pyq sem4_4_03 end sem pyq sem 4 CD-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>SEPM</h3>
      <ul>
        <li><a href="pdf/sepm mid1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/SEPM mid2 sem4.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/End sem pyq sem4_6_05 end sem pyq sem 4 sepm-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Ada</h3>
      <ul>
        <li><a href="pdf/ada mid1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/Ad Java sec mid sem4_4_03 02-Copy-Copy.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/End sem pyq sem4_8_07 end sem pyq sem4 Ada-Copy.pdf">📘 End Sem PYQ</a></li>
        <li><a href="pdf/Coming_Soon_Notes_Updated.pdf">📘 Notes All Unit</a></li>
        
      </ul>
    </div>

    <div class="box-container">
      <h3>Web Technology</h3>
      <ul>
        <li><a href="pdf/wt mid1.pdf">📘 Mid Sem 1 PYQ</a></li>
        <li><a href="pdf/WT mid2 sem4.pdf">📘 Mid Sem 2 PYQ</a></li>
        <li><a href="pdf/End sem pyq sem4_10_09-Copy.pdf">📘 End Sem PYQ</a></li>
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
