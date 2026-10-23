package com.studentportal.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        if (session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        request.setAttribute("creationTime", new java.util.Date(session.getCreationTime()));
        request.setAttribute("lastAccessedTime", new java.util.Date(session.getLastAccessedTime()));
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }
}
