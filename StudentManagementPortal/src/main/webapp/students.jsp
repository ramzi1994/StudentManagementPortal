<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List,com.studentportal.model.Student" %>
<!DOCTYPE html>
<html>
<head><title>Students</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<nav><b>Student Portal</b><span><a href="dashboard">Dashboard</a> | <a href="logout">Logout</a></span></nav>
<div class="container">
<div class="heading"><h1>Student Records</h1><a class="btn" href="student-form.jsp">+ Add Student</a></div>
<table>
<tr><th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Semester</th><th>Phone</th><th>Actions</th></tr>
<%
List<Student> students = (List<Student>) request.getAttribute("students");
for (Student s : students) {
%>
<tr>
<td><%= s.getId() %></td>
<td><%= s.getFirstName() %> <%= s.getLastName() %></td>
<td><%= s.getEmail() %></td>
<td><%= s.getCourse() %></td>
<td><%= s.getSemester() %></td>
<td><%= s.getPhone() %></td>
<td>
<a href="students?action=edit&id=<%= s.getId() %>">Edit</a> |
<a href="students?action=delete&id=<%= s.getId() %>" onclick="return confirm('Delete this student?')">Delete</a>
</td>
</tr>
<% } %>
</table>
</div>
</body>
</html>
