<%-- 
    Document   : LoginSignUp
    Created on : 20-Jan-2024, 11:34:07 am
    Author     : dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="LoginSignUp.css">
    <%
        Cookie[] ecookies = request.getCookies();
        String userEmail = "";
        if (ecookies != null) {
            for (Cookie cookie : ecookies) {
                if ("userEmail".equals(cookie.getName())) {
                    userEmail = cookie.getValue();
                    break;
                }
            }
        }
    %>
    <script>
        function showSignUpSection() {
            document.getElementById("signupSection").style.display = "block";
            document.getElementById("loginSection").style.display = "none";
        }
    </script>
</head>
<body>
    <header>
        <h1>Welcome to INFODECK</h1>
    </header>
    <div class="container">
        <!-- Signup Section -->
        <div class="signup" id="signupSection">
            <h2>Sign up for InfoDeck</h2>
            <p>Enter your email to get started:</p>
            <form action="register.jsp" method="post">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <button type="submit">Sign Up</button>
            </form>
        </div>

        <!-- Login Form -->
        <div class="login" id="loginSection">
             <%-- Display error message if it exists in the session --%>
            <%
                String loginError = (String) session.getAttribute("loginError");
                if (loginError != null) {
            %>
                <script>
                    alert('<%= loginError %>');
                </script>
            <%
                    // Remove the error message from the session
                    session.removeAttribute("loginError");
                }
            %>
            <h2>Login to InfoDeck</h2>
            <form action="LoginServlet" method="post">
                <label for="loginEmail">Email:</label>
                <input type="email" id="loginEmail" name="email" value="<%= userEmail %>" required>
                <label for="loginPassword">Password:</label>
                <input type="password" id="loginPassword" name="password" required>
                <button type="submit">Log In</button>
            </form>
            <form onsubmit="showSignUpSection(); return false;">
                <button type="submit">NEW USER? REGISTER FIRST</button>
            </form>
        </div>
    </div>

    <%
        // Check if the "visited" cookie exists
        boolean visited = false;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("visited".equals(cookie.getName()) && "true".equals(cookie.getValue())) {
                    visited = true;
    %>
                    <script>
                        document.getElementById("signupSection").style.display = "none";
                    </script>
    <%
                    break;
                }
            }
        }

        if (!visited) {
            // Set a cookie that expires in 30 days
            Cookie visitedCookie = new Cookie("visited", "true");
            visitedCookie.setMaxAge(30 * 24 * 60 * 60); // 30 days in seconds
            response.addCookie(visitedCookie);
    %>
            <script>
                // JavaScript function to hide password section for new users
                document.getElementById("loginSection").style.display = "none";
            </script>
    <%
        }
    %>

</body>
</html>
