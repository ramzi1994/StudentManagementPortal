# Student Management Portal

A real-world Java Web Application built from Experiments 1–4.

## Technologies
- Java 11+
- Jakarta Servlets / JSP
- Apache Tomcat 10.1+
- MySQL
- JDBC
- HTML/CSS
- NetBeans or Maven

## Features
1. Login using Servlet POST and HttpSession.
2. Session creation and last-accessed time display.
3. Student registration using GET/POST concepts.
4. JSP student form and dynamic student list.
5. JDBC CRUD: insert, update, delete, retrieve.
6. Logout and session invalidation.

## Database
Run `database.sql` in MySQL Workbench.

Default login:
- Username: admin
- Password: admin123

## Database configuration
Edit `src/main/java/com/studentportal/util/DBConnection.java` if your MySQL username/password is different.

## Run
1. Start MySQL.
2. Run database.sql.
3. Open project in NetBeans as a Maven project.
4. Configure Tomcat 10.1+.
5. Clean and Build.
6. Run the project.
7. Open `/StudentManagementPortal/login.jsp`.
