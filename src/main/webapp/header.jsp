<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            <a href="home.jsp">Home</a>
            <a href="courses.jsp">Courses</a>
            <a href="wiki.jsp">Wiki</a>
            <a href="social.jsp">Social</a>
            <a href="about.jsp">About</a>
            <!-- Add more pages as needed -->
        </nav>
    </header>

    <!-- Content of your page goes here -->
</body>
</html>
