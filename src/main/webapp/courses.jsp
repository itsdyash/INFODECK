<%-- 
    Document   : courses
    Created on : 21-Jan-2024, 1:29:33 pm
    Author     : dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InfoDeck - Courses</title>
        <link rel="stylesheet" type="text/css" href="courses.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <!-- Courses Section -->
        <div class="courses-section" id="courses-section">

            <!-- Free Courses -->
            <div class="course-category">
                <h2>Free Courses</h2>

                <div class="course-grid">
                    <a href="java_course.html" class="course-rectangle">
                        <img src="JavaCourse.jpg" alt="Java Course">
                        <div class="course-details">
                            <h2>Java Course</h2>
                            <p>Description: Learn Java programming language.</p>
                            <button class="start-course-button">Start Course</button>
                        </div>
                    </a>

                    <a href="java_course.html" class="course-rectangle">
                        <img src="PythonCourse.jpg" alt="Java Course">
                        <div class="course-details">
                            <h2>Python Course</h2>
                            <p>Description: Learn Python programming language.</p>
                            <button class="start-course-button">Start Course</button>
                        </div>
                    </a>
                    <a href="Cpp.html" class="course-rectangle">
                        <img src="CppCourse.jpg" alt="Cpp Course">
                        <div class="course-details">
                            <h2>C++ Course</h2>
                            <p>Master C++ Like a Pro!<br>Description: Learn C++ programming language.</p>
                        </div>
                        <button class="start-course-button">Start Course</button>
                    </a>




                    <!-- Add more free courses as needed -->

                </div>
            </div>

            <!-- Paid Courses -->
            <div class="course-category">
                <h2>Paid Courses</h2>

                <div class="course-grid">
                    <a href="c_course.html" class="course-rectangle">
                        <img src="CCourse.jpg" alt="C Course">
                        <div class="course-details">
                            <h2>C Course</h2>
                            <p>Description: Master the fundamentals of C programming.</p>
                            <button class="start-course-button">Start Course</button>
                        </div>
                    </a>

                    <a href="python_course.html" class="course-rectangle">
                        <img src="PythonCourse.jpg" alt="Python Course">
                        <div class="course-details">
                            <h2>Python Course</h2>
                            <p>Description: Explore Python programming language.</p>
                            <button class="start-course-button">Start Course</button>
                        </div>
                    </a>



                    <!-- Add more paid courses as needed -->

                </div>
            </div>

        </div>

        <!-- Instructor Section -->
        <div class="instructor-section" id="instructor-section">
            <h2>Become an Instructor</h2>
            <p>Interested in becoming an instructor? Send us an email!</p>
            <div class="instructor-form">
                <input type="text" class="form-input" placeholder="Your Name">
                <input type="email" class="form-input" placeholder="Your Email">
                <textarea class="form-input" placeholder="Your Message"></textarea>
                <button class="form-btn">Send Email</button>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
