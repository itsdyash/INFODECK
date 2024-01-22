<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-e5v5q2xJcveJ4qYbRBjop7kE9L/tt46nLTj3WBFqHzlwE0P5KeQ/G5PB1abTJR2e" crossorigin="anonymous">
    <style>
        /* Footer styles */
        footer {
            background-color: #304D30;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .footer-section {
            margin-bottom: 20px;
        }

        .social-icons {
            display: flex;
            justify-content: center;
            margin-bottom: 10px;
        }

        .social-icons a {
            margin: 0 10px;
            color: white;
            text-decoration: none;
            font-size: 20px;
        }

        .connect-section,
        .work-section {
            text-align: left;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Responsive styles for the footer */

        @media only screen and (max-width: 600px) {
            .social-icons {
                flex-wrap: wrap;
            }

            .connect-section,
            .work-section {
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <!-- Footer -->
    <footer>
        <div class="footer-section social-icons">
            <a href="#" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/its.dyash/?hl=en" target="_blank"><i class="fab fa-instagram"></i></a>
            <!-- Add more social media icons as needed -->
        </div>

        <div class="footer-section connect-section">
            <h3>Connect with Us</h3>
            <p>Email: info@infodeck.com</p>
            <p>Phone: +91-9509114410</p>
        </div>

        <div class="footer-section work-section">
            <h3>Work with Us</h3>
            <p>Interested in joining our team?</p>
            <p>Email your resume to: careers@infodeck.com</p>
        </div>

        <p>&copy; 2024 InfoDeck. All rights reserved.</p>
    </footer>
</body>
</html>
