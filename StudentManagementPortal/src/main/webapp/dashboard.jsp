<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>Dashboard</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<nav><b>Student Portal</b><span><a href="students">Students</a> | <a href="logout">Logout</a></span></nav>
<div class="container">
<h1>Dashboard</h1>
<p>Welcome, <b><%= session.getAttribute("username") %></b>.</p>
<div class="grid">
  <div class="card"><h3>Session Created</h3><p><%= request.getAttribute("creationTime") %></p></div>
  <div class="card"><h3>Last Accessed</h3><p><%= request.getAttribute("lastAccessedTime") %></p></div>
</div>
<p>This page demonstrates HttpSession creation and last-accessed time.</p>
<a class="btn" href="students">Manage Students</a>
<hr>
<h3>Experiment 1 — GET/POST Demo</h3>
<form action="name" method="get" class="inline-form">
<input name="firstName" placeholder="First Name" required>
<input name="lastName" placeholder="Last Name" required>
<button type="submit">Send with GET</button>
</form>
<form action="name" method="post" class="inline-form">
<input name="firstName" placeholder="First Name" required>
<input name="lastName" placeholder="Last Name" required>
<button type="submit">Send with POST</button>
</form>
</div>
</body>
</html>
