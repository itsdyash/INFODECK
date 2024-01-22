<%-- 
    Document   : register
    Created on : 20-Jan-2024, 11:43:11 am
    Author     : dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <title>User Registration</title>
    <link rel="stylesheet" type="text/css" href="register.css">
    </head>
    <body>

<%
    String email = request.getParameter("email");
    boolean emailCookieExists = false;

    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("userEmail".equals(cookie.getName())) {
                emailCookieExists = true;
                break;
            }
        }
    }

    if (!emailCookieExists) {
        // Set the userEmail cookie
        Cookie emailCookie = new Cookie("userEmail", email);
        emailCookie.setMaxAge(365 * 24 * 60 * 60); // Set expiration to one year
        response.addCookie(emailCookie);
    }
%>

<div class="container">
    <h2>User Registration</h2>
    <form action="register" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="phoneNumber">Phone Number:</label>
        <input type="tel" id="phoneNumber" name="phoneNumber" required>

        <label for="education">Education:</label>
        <select id="education" name="education" required>
            <option value="" disabled selected>Select Education</option>
            <option value="bsc">B.Sc. in Computer Science</option>
            <option value="msc">M.Sc. in Computer Science</option>
            <option value="phd">Ph.D. in Computer Science</option>
            <!-- Add more options as needed -->
        </select>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= email %>" readonly>

        <label for="Password">Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Register</button>
    </form>
</div>

</body>
</html>
