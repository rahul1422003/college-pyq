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
<title>Semester2</title>
<link rel="Stylesheet" href="sem2.css">
</head>
<body>

<img src="image/lnct.png" style="position: fixed;top: 50px; left: 0; height: 80px; width: 200px;">
<div class="header">
<input type="text" id="searchBar" class="searchBar" placeholder="Search Subject">
    <h1><u>Semester-2</u></h1>
    <h2>LNCT University, Bhopal</h2>
    <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
    <p id="datetime"></p>
  </div>

<div class="subject"> 
 <div class="box-container">
<h3>Physics</h3>
<ul>
<li><a href="pdf/physics mid1 sem2_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/Physics mid2 sem2.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/Physics end sem2.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Linear algebra</h3>
<ul>
<li><a href="pdf/Linear mid1 sem2.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/Linear mid2 sem2.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/Linear end sem2_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Civil</h3>
<ul>
<li><a href="pdf/civil mid1 sem2_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/Civil mid2 sem2_2_01-Copy.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/Civil end sem1_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>DCES</h3>
<ul>
<li><a href="pdf/DCES mid1 sem2_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/DCES mid2 sem2_2_01-Copy.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/DCES end sem2_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Data Structure</h3>
<ul>
<li><a href="pdf/DS mid1 sem2_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="link" download>📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/DS end sem2_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Computer network</h3>
<ul>
<li><a href="pdf/CN mid1 sem2_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/CN mid2 sem2_2_01-Copy.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/CN end sem2_2_01-Copy.pdf">📘End Sem PYQ</a></li>
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