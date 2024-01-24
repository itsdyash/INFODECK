/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.infodeck;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import static com.DbConnection.DbConnection.getConnection;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String userEmail = request.getParameter("email");
            String userPassword = request.getParameter("password");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                try (Connection conn = getConnection()) {
                    String sql = "SELECT * FROM userdata WHERE uEmail = ? AND uPwd = ?";
                    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                        pstmt.setString(1, userEmail);
                        pstmt.setString(2, userPassword);

                        try (ResultSet resultSet = pstmt.executeQuery()) {
                            if (resultSet.next()) {
                                // User exists, set user details in the session
                                HttpSession session = request.getSession(true);
                                session.setAttribute("userEmail", userEmail);
                                session.setAttribute("userRole", resultSet.getString("uRole"));
                                // Redirect to home.jsp or any other page after successful login
                                response.sendRedirect("home.jsp");
                            } else {
                                // Store an error message in the session
                                HttpSession session = request.getSession(true);
                                session.setAttribute("loginError", "Incorrect email or password. Please try again.");
                                // Redirect back to the login page
                                response.sendRedirect("LoginSignUp.jsp");
                            }
                        }
                    }
                }

            } catch (ClassNotFoundException | SQLException e) {
                out.println("Error: " + e.getMessage());
            }
        }
    }
}
