<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #EEF0E5;
            color: #333;
            text-align: center;
        }

        main {
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>

<%
    // Fetch admin email from the session
    String adminEmail = (String) session.getAttribute("adminEmail");
%>

    <h2>Welcome, Admin!</h2>
    <p>Email: <%= adminEmail %></p>

    <h2>User Details</h2>
    <form action="UserDetailsServlet" method="GET">
        <input type="submit" value="SUBMIT">
    </form>

</body>
</html>
