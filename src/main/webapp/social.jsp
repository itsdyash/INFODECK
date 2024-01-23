<%-- 
    Document   : social
    Created on : 21-Jan-2024, 1:39:14 pm
    Author     : dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFOSOCIAL</title>
        <style>
/* Common styles (similar to other pages) */
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
    color: #333;
}

header {
    background-color: #163020;
    color: white;
    padding: 15px 0;
    text-align: center;
}

nav {
    display: flex;
    justify-content: center;
    margin-top: 10px;
}

nav a {
    margin: 0 15px;
    color: white;
    text-decoration: none;
    font-weight: bold;
}

/* Under Construction Section */
.construction-section {
    text-align: center;
    padding: 200px;
    background-color: #fff;
    margin: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

.construction-section h2 {
    color: #163020;
    margin-bottom: 20px;
}

/* Responsive styles */
@media only screen and (max-width: 600px) {
    nav {
        flex-direction: column;
    }

    nav a {
        margin: 10px 0;
    }

    .construction-section {
        padding: 20px;
    }
}


        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
       
    <!-- Under Construction Section -->
    <div class="construction-section">
        <h2>Under Construction</h2>
        <p>This section or page is currently under construction. We apologize for the inconvenience.</p>
        <p>Please check back later for updates.</p>
    </div>
<jsp:include page="footer.jsp" />

</body>

</html>