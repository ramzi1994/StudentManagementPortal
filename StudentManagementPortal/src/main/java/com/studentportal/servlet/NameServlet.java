package com.studentportal.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/name")
public class NameServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String first = request.getParameter("firstName");
        String last = request.getParameter("lastName");
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<h2>GET Result</h2>");
        response.getWriter().println("<p>First Name: " + escape(first) + "</p>");
        response.getWriter().println("<p>Last Name: " + escape(last) + "</p>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String first = request.getParameter("firstName");
        String last = request.getParameter("lastName");
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<h2>POST Result</h2>");
        response.getWriter().println("<p>First Name: " + escape(first) + "</p>");
        response.getWriter().println("<p>Last Name: " + escape(last) + "</p>");
    }

    private String escape(String s) {
        if (s == null) return "";
        return s.replace("&","&amp;").replace("<","&lt;").replace(">","&gt;");
    }
}
