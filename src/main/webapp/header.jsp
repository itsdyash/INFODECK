<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to InfoDeck</title>
    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #EEF0E5;
            color: #333;
        }

        header {
            background-color: #304D30;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav {
            display: flex;
        }

        nav a {
            text-decoration: none;
            color: white;
            margin-left: 20px;
        }
        nav a :hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        /* Media queries for responsiveness */

        @media only screen and (max-width: 600px) {
            header {
                flex-direction: column;
                align-items: center;
            }

            nav {
                margin-top: 10px;
            }

            nav a {
                margin: 5px;
            }

            .logout-btn {
                margin: 10px 0;
            }
        }

        @media only screen and (max-width: 400px) {
            header {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>InfoDeck</h1>
        <nav>
            <% 
        String userRole = (String) session.getAttribute("userRole");
        if ("admin".equals(userRole)) { 
    %>
            <a href="admin.jsp">Admin Page</a>
    <%
        }
    %>
            <a href="home.jsp">Home</a>
            <a href="courses.jsp">Courses</a>
            <a href="wiki.jsp">Wiki</a>
            <a href="social.jsp">Social</a>
            <a href="about.jsp">About</a>
             
            
            <form action="LogoutServlet" method="post">
                <button class="logout-btn" type="submit">Logout</button>
            </form>
            <!-- Add more pages as needed -->
        </nav>
    </header>

    <!-- Content of your page goes here -->
</body>
</html>
