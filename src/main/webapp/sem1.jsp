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
<title>Semester1</title>
<link rel="stylesheet" href="sem1.css">
</head>
<body>
<div class="header">
<input type="text" id="searchBar" class="searchBar" placeholder="Search Subject">
<img src="image/lnct.png" style="position: fixed;top: 50px; left: 0; height: 80px; width: 200px;">
    <h1><u>Semester-1</u></h1>
    <h2>LNCT University, Bhopal</h2>
    <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
    <p id="datetime"></p>
  </div>
<div class="subject"> 
 <div class="box-container">
<h3>ECLS</h3>
<ul>
<li><a href="pdf/ECLS mid1 sem1_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/ECLS mid2 sem1_2_01-Copy.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/ECLS end sem1_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Maths</h3>
<ul>
<li><a href="pdf/maths M1 sem1.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/M1  mid2 sem1.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/Maths end sem1.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>BEEE</h3>
<ul>
<li><a href="pdf/BEEE mid1 sem1.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/BEEE mid2 sem1.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/BEEE endsem1_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>CA</h3>
<ul>
<li><a href="pdf/CA mid1 sem1_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/CA mid2 sem1_2_01-Copy.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/CA end sem1_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>PPS</h3>
<ul>
<li><a href="pdf/PPS mid 2 sem1_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/PPS mid2 sem1_2_01-Copy.pdf" >📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/PPS end sem1_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>ME</h3>
<ul>
<li><a href="pdf/ME mid1 sem1_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/ME mid2 sem1.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/ME end sem1_2_01-Copy.pdf">📘End Sem PYQ</a></li>
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
    