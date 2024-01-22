<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFOABOUT</title>
        <style>
            /* About Section styles */
            .about-section {
                max-width: 800px;
                margin: 20px auto;
                padding: 20px;
                background-color: #B6C4B6;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                text-align: left;
            }

            .creator {
                margin-bottom: 20px;
                text-align: left;
            }

            .creator img {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                margin-bottom: 10px;
            }

            .social-handles a {
                text-decoration: none;
                color: #163020;
                margin-right: 10px;
                display: inline-block;
            }

            .suggestion-section {
                margin-top: 20px;
            }

            .suggestion-section h3 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            .suggestion-section form {
                display: flex;
                flex-direction: column;
            }

            .suggestion-section label {
                font-size: 16px;
                margin-bottom: 5px;
            }

            .suggestion-section textarea {
                padding: 8px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                resize: vertical;
            }

            .suggestion-section button {
                background-color: #163020;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 18px;
            }

            /* Responsive styles for the About Section */
            @media only screen and (max-width: 600px) {
                .creator img {
                    width: 80px;
                    height: 80px;
                }

                .social-handles a {
                    margin-right: 5px;
                }
            }

            @media only screen and (max-width: 400px) {
                .creator img {
                    width: 60px;
                    height: 60px;
                }

                .social-handles a {
                    margin-right: 3px;
                }
            }
        </style>
    </head>
    <body>
        <jsp:include page ="header.jsp"/>
        <!-- About Us Section -->
        <div class="about-section">
            <h2>About Us</h2>

            <!-- Creator 1 -->
            <div class="creator">
                <img src="test.jpg" alt="Creator 1">
                <h3>DURGA</h3>
                <p>Web Developer-The Visionary Developer:
                    Embark on a digital journey with John Doe, the visionary web developer behind InfoDeck.
                    With a passion for coding excellence, John brings technical prowess to the forefront, 
                    ensuring a seamless and innovative learning platform. Get ready to explore the world of programming through 
                    his expertly crafted design.</p>
                <div class="social-handles">
                    <a href="https://twitter.com/johndoe" target="_blank">Twitter</a>
                    <a href="https://linkedin.com/in/johndoe" target="_blank">LinkedIn</a>
                </div>
            </div>

            <!-- Creator 2 -->
            <div class="creator">
                <img src="test.jpg" alt="Creator 2">
                <h3>MANAS</h3>
                <p>UI/UX Designer-The Artisan of User Experience:
                    Meet Jane Smith, the artistic force shaping the user experience at InfoDeck. As our UI/UX designer, 
                    Jane adds a touch of visual elegance to every pixel, creating an immersive learning environment. 
                    Join us as we delve into a world where aesthetics meet functionality, curated by Jane's creative ingenuity.</p>
                <div class="social-handles">
                    <a href="https://twitter.com/janesmith" target="_blank">Twitter</a>
                    <a href="https://linkedin.com/in/janesmith" target="_blank">LinkedIn</a>
                </div>
            </div>

            <!-- Creator 3 -->
            <div class="creator">
                <img src="test.jpg" alt="Creator 3">
                <h3>DHANANJAY</h3>
                <p>Content Writer-The Wordsmith of Knowledge:
                    At the heart of InfoDeck's content is Alex Johnson, our dedicated content writer. 
                    Through engaging narratives and insightful descriptions, Alex crafts a unique learning experience. 
                    Join the journey of knowledge discovery, guided by Alex's passion for effective communication and the art of storytelling.
                </p>
                <div class="social-handles">
                    <a href="https://twitter.com/alexjohnson" target="_blank">Twitter</a>
                    <a href="https://linkedin.com/in/alexjohnson" target="_blank">LinkedIn</a>
                </div>
                <div class="suggestion-section">
                    <h3>Give Your Suggestion</h3>
                    <form action="submit_suggestion.jsp" method="post">
                        <label for="suggestion">Your Suggestion:</label>
                        <textarea id="suggestion" name="suggestion" rows="4" cols="50" required></textarea>
                        <br>
                        <button type="submit">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page ="footer.jsp"/>
    </body>
</html>
