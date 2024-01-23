<%-- 
    Document   : wiki
    Created on : 21-Jan-2024, 1:32:46 pm
    Author     : dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFOWIKI</title>
        <link rel="stylesheet" type="text/css" href="wiki.css">
    </head>

    <body>
        <jsp:include page="header.jsp"/>
        <div class="Subjects" id="Subjects">
            <h1>
                <a href="java.jsp">Java</a>
                <a href="python.jsp">Python</a>
                <a href="Cplus.jsp">C++</a>
                <a href="c.jsp">C</a>
                <a href="javascript.jsp">JavaScript</a>


            </h1>
        </div>
        <div class="content" id="content">
            <h2>Welcome to the Knowledge Hub!</h2>
            <p>Select a subject from the top bar to explore sections.</p>
        </div>
    </div>

</body>

</html>