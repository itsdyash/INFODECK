<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFOWIKI</title>
        <link rel="stylesheet" type="text/css" href="wiki.css">
        <link rel="stylesheet" type="text/css" href="allSub.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="Subjects" id="Subjects">
            <h1>
                <a href="java.jsp">Java</a>
                <a href="python.jsp">Python</a>
                <a href="Cplus.jsp">C++</a>
                <a href="c.jsp">C</a>
                <a href="javascript.jsp">JavaScript</a>


            </h1>
        </div>
        <div class="course-container">
            <div class="left-container">
                <h2>JAVA/Chapters</h2>
                <div class="pages">
                    <a href="#" onclick="showContent(1)">Chapter 1</a>
                    <a href="#" onclick="showContent(2)">Chapter 2</a>
                    <a href="#" onclick="showContent(3)">Chapter 3</a>
                    <a href="#" onclick="showContent(4)">Chapter 4</a>
                    <a href="#" onclick="showContent(5)">Chapter 5</a>
                    <a href="#" onclick="showContent(6)">Chapter 6</a>
                    <a href="#" onclick="showContent(7)">Chapter 7</a>
                    <a href="#" onclick="showContent(8)">Chapter 8</a>
                    <a href="#" onclick="showContent(9)">Chapter 9</a>
                    <a href="#" onclick="showContent(10)">Chapter 10</a>
                </div>
            </div>

            <div class="right-container">
                <h1 style="color:#27ae60">Java</h1>
            </div>

            <!-- Notes Section -->
            <div class="notes-section">
                <h2>Notes Section</h2>
                <form action="your_page_name.jsp" method="post">
                    <textarea class="notes-input" name="userNote" placeholder="Add your notes here..."></textarea>
                    <button type="submit">SUBMIT</button>
                </form>
            </div>
        </div>

        <script>
            function showContent(chapter) {
                var content = "";

                switch (chapter) {
                    case 1:
                        content = "<h2>Chapter 1: Introduction to Java</h2>" +
                                "<p>This chapter covers the basics of Java programming and introduces you to the world of programming with Java.</p>" +
                                "</div>";
                        break;

                    case 2:
                        content = "<h2>Chapter 2: Variables and Data Types</h2>" +
                                "<p>Learn about variables, data types, and how to declare and use them in Java programs.</p>" +
                                "<div class='video-container'>" +
                                "</div>";
                        break;

                    case 3:
                        content = "<h2>Chapter 3: Control Flow</h2>" +
                                "<p>Understand control flow statements such as if, else, and loops to control the flow of your Java programs.</p>" +
                                "<div class='video-container'>" +
                                "</div>";
                        break;

                        // Add content for the remaining chapters similarly

                    default:
                        content = "<p>No content available for this chapter.</p>";
                        break;
                }

                document.querySelector(".right-container").innerHTML = content;
            }
        </script>
        <jsp:include page="footer.jsp" />
    </body>

</html>
