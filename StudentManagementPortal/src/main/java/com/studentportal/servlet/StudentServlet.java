package com.studentportal.servlet;

import com.studentportal.dao.StudentDAO;
import com.studentportal.model.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/students")
public class StudentServlet extends HttpServlet {
    private final StudentDAO dao = new StudentDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = request.getParameter("action");

            if ("delete".equals(action)) {
                dao.delete(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("students");
                return;
            }

            if ("edit".equals(action)) {
                Student student = dao.getById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("student", student);
                request.getRequestDispatcher("student-form.jsp").forward(request, response);
                return;
            }

            request.setAttribute("students", dao.getAll());
            request.getRequestDispatcher("students.jsp").forward(request, response);
        } catch (SQLException | NumberFormatException e) {
            throw new ServletException("Unable to process student request.", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            Student s = new Student();
            s.setFirstName(request.getParameter("firstName"));
            s.setLastName(request.getParameter("lastName"));
            s.setEmail(request.getParameter("email"));
            s.setCourse(request.getParameter("course"));
            s.setSemester(Integer.parseInt(request.getParameter("semester")));
            s.setPhone(request.getParameter("phone"));

            if (id == null || id.isBlank()) {
                dao.insert(s);
            } else {
                s.setId(Integer.parseInt(id));
                dao.update(s);
            }

            response.sendRedirect("students");
        } catch (SQLException | NumberFormatException e) {
            throw new ServletException("Unable to save student.", e);
        }
    }
}
