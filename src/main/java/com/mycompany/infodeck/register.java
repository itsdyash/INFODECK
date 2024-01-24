package com.mycompany.infodeck;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static com.DbConnection.DbConnection.getConnection;

public class register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta http-equiv='refresh' content='5;url=LoginSignUp.jsp'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"registerS.css\">");
            out.println("<title>Servlet register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div id='container'>");

            String uName = request.getParameter("uName");
            String uContact = request.getParameter("uContact");
            String uEdu = request.getParameter("uEdu");
            String uEmail = request.getParameter("uEmail");
            String uPwd = request.getParameter("uPwd");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                try (Connection conn = getConnection()) {
                    String sql = "INSERT INTO userdata (uName, uContact, uEdu, uEmail, uPwd, uRole) VALUES (?, ?, ?, ?, ?, ?)";

                    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                        pstmt.setString(1, uName);
                        pstmt.setString(2, uContact);
                        pstmt.setString(3, uEdu);
                        pstmt.setString(4, uEmail);
                        pstmt.setString(5, uPwd);
                        pstmt.setString(6, "user");

                        int rowsAffected = pstmt.executeUpdate();

                        if (rowsAffected > 0) {
                            // Registration successful, display success message
                            out.println("<h2>Registration Successful</h2>");
                            out.println("<p>Thank you for signing up with InfoDeck!</p>");
                            out.println("<p>You will be redirected to the login page in 5 seconds...</p>");
                        } else {
                            // Rows not affected, there was an issue with the database
                            out.println("<h2>Registration Failed</h2>");
                            out.println("<p>There was an issue with the registration. Please try again later.</p>");
                        }
                    }
                }
            } catch (ClassNotFoundException | SQLException e) {
                out.println("<h2>Registration Failed</h2>");
                out.println("<p>There was an issue with the registration. Please try again later.</p>");
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
