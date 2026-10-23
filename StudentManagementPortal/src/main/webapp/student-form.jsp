<%@ page contentType="text/html;charset=UTF-8" %>
<%
  com.studentportal.model.Student s =
      (com.studentportal.model.Student) request.getAttribute("student");
  boolean edit = s != null;
%>
<!DOCTYPE html>
<html>
<head><title><%= edit ? "Edit" : "Add" %> Student</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<nav><b>Student Portal</b><span><a href="students">Students</a> | <a href="logout">Logout</a></span></nav>
<div class="card form-card">
<h2><%= edit ? "Edit Student" : "Add Student" %></h2>
<form action="students" method="post">
<% if (edit) { %><input type="hidden" name="id" value="<%= s.getId() %>"><% } %>
<label>First Name</label><input name="firstName" value="<%= edit ? s.getFirstName() : "" %>" required>
<label>Last Name</label><input name="lastName" value="<%= edit ? s.getLastName() : "" %>" required>
<label>Email</label><input type="email" name="email" value="<%= edit ? s.getEmail() : "" %>" required>
<label>Course</label><input name="course" value="<%= edit ? s.getCourse() : "" %>" required>
<label>Semester</label><input type="number" name="semester" min="1" max="12" value="<%= edit ? s.getSemester() : 1 %>" required>
<label>Phone</label><input name="phone" value="<%= edit ? s.getPhone() : "" %>">
<button type="submit">Save Student</button>
<a class="btn secondary" href="students">Cancel</a>
</form>
</div>
</body>
</html>
