<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>Login</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<div class="card small">
<h2>Admin Login</h2>
<% if ("1".equals(request.getParameter("error"))) { %>
<p class="error">Invalid username or password.</p>
<% } %>
<form action="login" method="post">
<label>Username</label>
<input type="text" name="username" required>
<label>Password</label>
<input type="password" name="password" required>
<button type="submit">Login</button>
</form>
</div>
</body>
</html>
