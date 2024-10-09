<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!-- Include Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600&display=swap" rel="stylesheet">
    <!-- Include Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        /* General Reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Header Styles */
        header {
            background-color: #3cb043;
            color: white;
            padding: 4rem 0; /* Increased padding for better appearance */
            text-align: center;
            width: 100%;
        }

        header h1 {
            font-size: 2.5rem;
            font-weight: 600;
            margin: 0;
        }

        /* Contact Form Styles */
        .contact-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            padding: 2rem;
            max-width: 600px;
            width: 90%;
            margin: 2rem auto;
        }

        .contact-container form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        label {
            font-size: 1rem;
            margin-bottom: 0.5rem;
            display: block;
            color: #555;
        }

        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
            border-color: #3cb043;
            outline: none;
        }

        textarea {
            resize: vertical;
            min-height: 150px;
        }

        button {
            background-color: #3cb043;
            color: white;
            padding: 0.75rem 1.5rem; /* Increased padding for larger button */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.1rem;
            font-weight: 500;
            transition: background-color 0.3s;
            /* Removed align-self to keep button centered */
        }

        button:hover {
            background-color: #37a239;
        }

        /* Footer Styles */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem 0;
            margin-top: auto;
            width: 100%;
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header h1 {
                font-size: 2rem;
            }

            .contact-container {
                padding: 1.5rem;
            }

            /* Kept button size consistent on mobile */
            button {
                font-size: 1.1rem;
                padding: 0.75rem 1.5rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Contact Us</h1>
    </header>

    <div class="contact-container">
        <form action="your-action-url" method="post">
            <div class="form-group">
                <label for="name"><i class="fas fa-user"></i> Name</label>
                <input type="text" id="name" name="name" required placeholder="Your Name">
            </div>
            <div class="form-group">
                <label for="email"><i class="fas fa-envelope"></i> Email</label>
                <input type="email" id="email" name="email" required placeholder="Your Email">
            </div>
            <div class="form-group">
                <label for="message"><i class="fas fa-comments"></i> Message</label>
                <textarea id="message" name="message" rows="5" required placeholder="Your Message"></textarea>
            </div>
            <button type="submit"><i class="fas fa-paper-plane"></i> Submit</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2024 KLU. All Rights Reserved.</p>
    </footer>
</body>
</html>
