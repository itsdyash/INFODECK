<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Course</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
        }

        .course-container {
            display: flex;
            max-width: 100%;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .left-container {
            width: 70%;
            padding: 20px;
        }

        .right-container {
            width: 30%;
            padding: 20px;
            background-color: #B6C4B6;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        p {
            font-size: 18px;
        }

        .video-container {
            position: relative;
            width: 100%;
            padding-bottom: 56.25%; /* 16:9 aspect ratio */
            margin-top: 20px;
        }

        iframe {
            position: absolute;
            width: 100%;
            height: 100%;
            border: none;
        }

        .pages {
            margin-top: 20px;
        }

        .pages a {
            display: block;
            color: #163020;
            text-decoration: none;
            margin-bottom: 10px;
            padding: 8px;
            border-radius: 5px;
            background-color: #fff;
            transition: background-color 0.3s;
        }

        .pages a:hover {
            background-color: #163020;
            color: #fff;
        }

        /* Responsive styles */
        @media only screen and (max-width: 600px) {
            .course-container {
                flex-direction: column;
            }

            .left-container, .right-container {
                width: 100%;
            }
        }

        /* Notes Section */
        .notes-section {
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .notes-input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="course-container">
        <div class="left-container">
            <h1 style="color:#27ae60">Java Programming Course</h1>

            <div class="video-container">
                <!-- Replace 'VIDEO_ID' with the actual YouTube video ID -->
                <iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID" frameborder="0" allowfullscreen></iframe>
            </div>

            <h2 style="color:#27ae60">About the Course</h2>
            <p>
                Welcome to our Java Programming Course! In this course, you will learn the fundamentals of Java programming,
                object-oriented concepts, and how to build Java applications. The course is designed for beginners with no
                prior programming experience.
            </p>

            <h2>Course Details</h2>
            <p>
                - Duration: 10 weeks<br>
                - Skill Level: Beginner<br>
                - Language: English<br>
                - Format: Video Lectures<br>
                - Certificate: Provided upon completion
            </p>
        </div>

        <div class="right-container">
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

            <!-- Notes Section -->
            <div class="notes-section">
                <h2>Notes Section</h2>
                <textarea class="notes-input" placeholder="Add your notes here..."></textarea>
            </div>
        </div>
    </div>

    <script>
        function showContent(chapter) {
            var content = "";

            switch (chapter) {
                case 1:
                    content = "<h2>Chapter 1: Introduction to Java</h2>" +
                              "<p>This chapter covers the basics of Java programming and introduces you to the world of programming with Java.</p>" +
                              "<div class='video-container'>" +
                                  "<iframe width='560' height='315' src='https://www.youtube.com/embed/VIDEO_ID_CHAPTER_1' frameborder='0' allowfullscreen></iframe>" +
                              "</div>";
                    break;

                case 2:
                    content = "<h2>Chapter 2: Variables and Data Types</h2>" +
                              "<p>Learn about variables, data types, and how to declare and use them in Java programs.</p>" +
                              "<div class='video-container'>" +
                                  "<iframe width='560' height='315' src='https://www.youtube.com/embed/VIDEO_ID_CHAPTER_2' frameborder='0' allowfullscreen></iframe>" +
                              "</div>";
                    break;

                case 3:
                    content = "<h2>Chapter 3: Control Flow</h2>" +
                              "<p>Understand control flow statements such as if, else, and loops to control the flow of your Java programs.</p>" +
                              "<div class='video-container'>" +
                                  "<iframe width='560' height='315' src='https://www.youtube.com/embed/VIDEO_ID_CHAPTER_3' frameborder='0' allowfullscreen></iframe>" +
                              "</div>";
                    break;

                // Add content for the remaining chapters similarly

                default:
                    content = "<p>No content available for this chapter.</p>";
                    break;
            }

            document.querySelector(".left-container").innerHTML = content;
        }
    </script>
    <jsp:include page="footer.jsp" />
</body>
</html>
