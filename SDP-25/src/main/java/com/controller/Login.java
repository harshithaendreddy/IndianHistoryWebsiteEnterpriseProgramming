package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.slogin;
import com.model.sloginadmin;

public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        sloginadmin sloginadmin = new sloginadmin();
        slogin slogin = new slogin(username, password);

        try {
            if (sloginadmin.StudentValidate(slogin)) {
                // Store username in session
                request.getSession().setAttribute("username", username);
                response.sendRedirect("dashboard.jsp");
            } else {
                pw.println("Invalid username or password."); // Added for better UX
                request.getRequestDispatcher("index.html").include(request, response); // Assuming index.html is your login page
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
