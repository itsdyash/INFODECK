<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>INFOWIKI</title>
    <link rel="stylesheet" type="text/css" href="ALLSUB.css">
    <style>
        /* Two-column layout */
        .wiki-container {
            display: flex;
            max-width: 1200px;
            margin: 20px auto;
        }

        .subtopics {
            width: 25%;
            padding: 20px;
            background-color: #B6C4B6;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .content {
            width: 75%;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .search-bar {
            margin-bottom: 20px;
        }

        /* Media queries for responsiveness */
        @media only screen and (max-width: 768px) {
            .wiki-container {
                flex-direction: column;
            }

            .subtopics,
            .content {
                width: 100%;
                margin-bottom: 20px;
            }
        }
    </style>
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
    
    <div class="wiki-container">
        <!-- Left side: Subtopics -->
        <div class="subtopics">
            <h2>Subtopics</h2>
            <ul>
                <li><a href="#java-intro">Java Introduction</a></li>
                <li><a href="#java-chapter1">Java Chapter 1</a></li>
                <li><a href="#java-chapter2">Java Chapter 2</a></li>
                <!-- Add more subtopics as needed -->
            </ul>
        </div>

        <!-- Right side: Content -->
        <div class="content">
            <div class="search-bar">
                <form id="searchForm" onsubmit="return searchContent()">
                    <label for="search">Search:</label>
                    <input type="text" id="search" name="search">
                    <button type="submit">Go</button>
                </form>
            </div>

            <div class="java" id="java-intro">
                <p>
                    <strong>Java Introduction:</strong> Java is a high-level, class-based, object-oriented programming language
                    that is designed to have as few implementation dependencies as possible.
                    It is intended to let application developers write once, run anywhere (WORA), meaning that
                    compiled Java code can run on all platforms that support Java without the need for recompilation.
                </p>
            </div>

            <div class="java" id="java-chapter1">
                <p>
                    <strong>Java Chapter 1:</strong> This is the content of Java Chapter 1. It covers various topics related to
                    Java programming and serves as a foundation for further learning.
                </p>
            </div>

            <div class="java" id="java-chapter2">
                <p>
                    <strong>Java Chapter 2:</strong> In this chapter, we explore advanced concepts in Java programming,
                    including object-oriented principles, design patterns, and more.
                </p>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"/>

    <!-- ... (previous HTML code) ... -->


<!-- ... (remaining HTML code) ... -->

</body>
</html>
