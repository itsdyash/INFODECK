<%-- 
    Document   : home
    Created on : 21-Jan-2024, 12:58:06 pm
    Author     : dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome to InfoDeck</title>
        <link rel="stylesheet" type="text/css" href="homes.css">

    <body>
        <jsp:include page="header.jsp" />
        <!-- Page Starter Cover -->
        <div class="cover">
            <h2>Welcome to InfoDeck</h2>
            <p>Explore our courses and enhance your knowledge in programming and technology.</p>
            <a href="#courses-section">Get Started</a>
        </div>

        <!-- Add the main content of your home page here -->
        <div class="courses-section" id="courses-section">
            <h2>Our Courses</h2>

            <a href="javaCourse.jsp" class="course-rectangle">
                <img src="JavaCourse.jpg" alt="Java Course">
                <div class="course-details">
                    <h2>Java Course</h2>
                    <p>Learn Java programming language.</p>
                </div>
                <button class="start-watching-button">Start Watching</button>
            </a>

            <a href="python_course.html" class="course-rectangle">
                <img src="PythonCourse.jpg" alt="Python Course">
                <div class="course-details">
                    <h2>Python Course</h2>
                    <p>Explore Python programming language.</p>
                </div>
                <button class="start-watching-button">Start Watching</button>
            </a>

            <a href="c_course.html" class="course-rectangle">
                <img src="CCourse.jpg" alt="C Course">
                <div class="course-details">
                    <h2>C Course</h2>
                    <p>Master the fundamentals of C.</p>
                </div>
                <button class="start-watching-button">Start Watching</button>
            </a>
            <a href="Cpp.html" class="course-rectangle">
                <img src="CppCourse.jpg" alt="Cpp Course">
                <div class="course-details">
                    <h2>C++ Course</h2>
                    <p>Master C++ Like a Pro!</p>
                </div>
                <button class="start-watching-button">Start Watching</button>
            </a>
            <a href="courses.jsp#instructor-section" class="course-rectangle">
                <img src="test.jpg" alt="C Course">
                <div class="course-details">
                    <h2>Work with Us!</h2>
                    <p>Become a Instructor</p>
                </div>
                <button class="SEND_EMAIL" style="background-color: purple">SEND RESUME!</button>
            </a>
        </div>

        <div class="testimonial-section">
            <h2>Testimonials</h2>
            <div class="testimonial">
                <p>"InfoDeck is an amazing platform! I've learned so much and highly recommend their courses."</p>
                <p>- John Doe</p>
            </div>
            <div class="testimonial">
                <p>"The courses provided by InfoDeck are top-notch. The instructors are knowledgeable and engaging."</p>
                <p>- Jane Smith</p>
            </div>
            <div class="testimonial">
                <p>"I am grateful for the valuable skills I've gained through InfoDeck's courses. Thank you!"</p>
                <p>- Alex Johnson</p>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
