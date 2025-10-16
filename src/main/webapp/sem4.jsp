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
<title>Semester4</title>
<link rel="Stylesheet" href="sem4.css">
</head>
<body>
<img src="image/lnct.png" style="position: fixed;top: 50px; left: 0; height: 80px; width: 200px;">
<div class="header">
<input type="text" id="searchBar" class="searchBar" placeholder="Search Subject">
   <h1><u>Semester-4</u></h1>
    <h2>LNCT University, Bhopal</h2>
    <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
    <p id="datetime"></p>
  </div>

<div class="subject"> 
 <div class="box-container">
<h3>Advance Java</h3>
<ul>
<li><a href="link" download>📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/Ad Java sec mid sem4_1.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/End sem pyq sem4_1_advance Java end sem pyq sem4.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Compiler Design</h3>
<ul>
<li><a href="link" download>📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/CD sec mid sem4_2_01-Copy.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/End sem pyq sem4_2_end sem pyq sem 4 CD.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>SEPM</h3>
<ul>
<li><a href="link" download>📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/SEPM mid2 sem4.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/End sem pyq sem4_3_end sem pyq sem 4 sepm.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>ADA</h3>
<ul>
<li><a href="link" download>📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/ada sec mid sem4.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/End sem pyq sem4_4_end sem pyq sem4 Ada.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>WT</h3>
<ul>
<li><a href="link" download>📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/WT mid2 sem4.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/End sem pyq sem4_5.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
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
        if (text.includes(input)) {
          boxes[i].style.display = "";
        } else {
          boxes[i].style.display = "none";
        }
      }
    });
</script>
</body>
</html>