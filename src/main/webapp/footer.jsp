<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
         integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
         crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        /* Footer styles */
        footer {
            background-color: #304D30;
            color: white;
            padding: 20px;
            text-align: center;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .footer-section {
            margin-bottom: 20px;
            max-width: 400px;
            width: 100%;
        }

        .social-icons {
            display: flex;
            justify-content: center;
            align-items: center; /* Align icons vertically on small screens */
            margin-bottom: 20px;
        }

        .social-icons a {
            margin: 0 10px;
            color: white;
            text-decoration: none;
            font-size: 20px;
        }

        .connect-section,
        .work-section,
        .map-container {
            text-align: left;
        }

        .contact-info {
            margin-top: 10px;
        }

        .map-container {
            width: 100%;
            max-width: 400px; /* Adjust the max-width as needed */
            margin: 0 auto; /* Center the map on larger screens */
            margin-bottom: 20px;
        }

        /* Responsive styles for the footer */
        @media only screen and (max-width: 600px) {
            .social-icons {
                flex-wrap: wrap;
            }

            .footer-section {
                max-width: 100%; /* Full width on small screens */
            }
        }
    </style>
</head>
<body>
    <!-- Footer -->
    <footer>
        <div class="footer-section social-icons">
            <a href="#" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="#" target="_blank"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="https://www.instagram.com/its.dyash/?hl=en" target="_blank"><i class="fab fa-instagram"></i></a>
            <!-- Add more social media icons as needed -->
        </div>

        <div class="footer-section connect-section">
            <h3>Connect with Us</h3>
            <div class="contact-info">
                <p>Email: info@infodeck.com</p>
                <p>Phone: +91-9509114410</p>
            </div>
        </div>

        <div class="footer-section work-section">
            <h3>Work with Us</h3>
            <p>Interested in joining our team?</p>
            <p>Email your resume to: careers@infodeck.com</p>
        </div>

        <div class="footer-section map-container">
            <h3>Our Location</h3>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3577.808167474134!2d73.0326287115168!3d26.26788868740714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39418c5ea67269fb%3A0x93b557732516d6d1!2sM.B.M.%20University!5e0!3m2!1sen!2sin!4v1705993137492!5m2!1sen!2sin"
                width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>

        <p>&copy; 2024 InfoDeck. All rights reserved.</p>
    </footer>
</body>
</html>
