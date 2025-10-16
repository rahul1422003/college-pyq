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
<title>Semester3</title>
<link rel="Stylesheet" href="sem3.css">
</head>
<body>
<img src="image/lnct.png" style="position: fixed;top: 50px; left: 0; height: 80px; width: 200px;">
<div class="header">
<input type="text" id="searchBar" class="searchBar" placeholder="Search Subject">
   <h1><u>Semester-3</u></h1>
    <h2>LNCT University, Bhopal</h2>
    <p>Welcome <%= name %> | Enrollment No: <%= enrollment %></p>
    <p id="datetime"></p>
  </div>

<div class="subject"> 
 <div class="box-container">
<h3>Java</h3>
<ul>
<li><a href="pdf/java mid sem1 sem3.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/java mid2 sem3.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/Java end sem3_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Data base</h3>
<ul>
<li><a href="pdf/Db mid1 sem3_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="link" download>📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/DBMS end sem3_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>OS</h3>
<ul>
<li><a href="pdf/OS mid1 sem4_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="link" download>📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/OS endsem3_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>Discrete</h3>
<ul>
<li><a href="pdf/Discrete mid1 sem3.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/Discrete mid2 sem3.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/Discrete end sem3_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>

<div class="box-container">
<h3>TOC</h3>
<ul>
<li><a href="pdf/TOC mid1 sem3_2_01-Copy.pdf">📘Mid Sem1 PYQ</a></li>
<li><a href="pdf/TOC mid2 sem3.pdf">📘Mid Sem2 PYQ</a></li>
<li><a href="pdf/TOC end sem3_2_01-Copy.pdf">📘End Sem PYQ</a></li>
<li><a href="link" download>📘Notes All Unit</a></li>
<li><a href="link" download>📘VIQ one night before Exam</a></li>
</ul>
</div>
<div class="box-container">
<h3>Python</h3>
<ul>
<li><a href="link" download>📘Mid Sem1 PYQ</a></li>
<li><a href="link" download>📘Mid Sem2 PYQ</a></li>
<li><a href="link" download>📘End Sem PYQ</a></li>
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