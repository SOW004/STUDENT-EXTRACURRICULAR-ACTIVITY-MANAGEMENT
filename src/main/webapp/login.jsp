<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login / Sign Up</title>

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
            background: linear-gradient(135deg, #a1e5a1, #dff2df); /* Lighter shades of green */
            background-size: 400% 400%;
            background-image: url('<%= request.getContextPath() %>/videos/klu1.jpg');
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            overflow-y: auto;
            animation: gradientAnimation 15s ease infinite;
            padding-top: 80px;
        }

        @keyframes gradientAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            width: 800px;
            max-width: 90%;
            display: flex;
            justify-content: space-between;
            align-items: stretch;
            backdrop-filter: blur(10px);
            transition: transform 0.3s, box-shadow 0.3s;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .container:hover {
            transform: scale(1.02);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.2);
        }

        .form-section {
            width: 48%;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
        }

        .separator {
            width: 1px;
            background-color: #ccc;
            margin: 0 1rem;
            align-self: stretch;
        }

        h2 {
            margin-bottom: 1.5rem;
            color: #333;
            font-size: 2rem;
            font-weight: 600;
            text-align: center;
        }

        .form-group {
            margin-bottom: 1.5rem;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
            font-size: 1rem;
        }

        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            font-size: 16px;
            transition: all 0.3s;
            background-color: rgba(255, 255, 255, 0.9);
        }

        input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(60, 176, 67, 0.2);
            background-color: rgba(255, 255, 255, 1);
        }

        button {
            background-color: #3cb043;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            margin-top: 1rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        button:hover {
            background-color: #37a239;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .error {
            color: #ff4d4d;
            margin: 1rem 0;
            font-size: 0.9rem;
            text-align: center;
        }

        .forgot-password {
            text-align: right;
            margin-top: -1rem;
            margin-bottom: 1rem;
        }

        .forgot-password a {
            color: #3cb043;
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            body {
                align-items: flex-start;
            }

            .container {
                flex-direction: column;
                width: 90%;
                padding: 1.5rem;
                margin-top: 20px;
            }

            .form-section {
                width: 100%;
                align-items: center;
            }

            .separator {
                display: none;
            }

            h2 {
                font-size: 1.8rem;
            }

            button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Login Form Section -->
    <div class="form-section">
        <h2>Login</h2>
        <% if (errorMessage != null) { %>
            <p class="error"><%= errorMessage %></p>
        <% } %>
        <form action="<%= request.getContextPath() %>/LoginServlet" method="post">
            <div class="form-group">
                <label for="login-username"><i class="fas fa-user"></i> Username</label>
                <input type="text" id="login-username" name="username" placeholder="Enter your username" required>
            </div>

            <div class="form-group">
                <label for="login-password"><i class="fas fa-lock"></i> Password</label>
                <input type="password" id="login-password" name="password" placeholder="Enter your password" required>
            </div>

            <!-- Forgot Password Link -->
            <div class="forgot-password">
                <a href="<%= request.getContextPath() %>/forgotPassword.jsp">Forgot Password?</a>
            </div>

            <button type="submit"><i class="fas fa-sign-in-alt"></i> Login</button>
        </form>
    </div>

    <!-- Separator -->
    <div class="separator"></div>

    <!-- Sign Up Form Section -->
    <div class="form-section">
        <h2>Sign Up</h2>
        <form action="<%= request.getContextPath() %>/SignupServlet" method="post">
            <div class="form-group">
                <label for="signup-username"><i class="fas fa-user-plus"></i> Username</label>
                <input type="text" id="signup-username" name="username" placeholder="Choose a username" required>
            </div>

            <div class="form-group">
                <label for="signup-email"><i class="fas fa-envelope"></i> Email</label>
                <input type="email" id="signup-email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="signup-password"><i class="fas fa-lock"></i> Password</label>
                <input type="password" id="signup-password" name="password" placeholder="Create a password" required>
            </div>

            <!-- Confirm Password Field -->
            <div class="form-group">
                <label for="signup-confirm-password"><i class="fas fa-lock"></i> Confirm Password</label>
                <input type="password" id="signup-confirm-password" name="confirmPassword" placeholder="Confirm your password" required>
            </div>

            <button type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
        </form>
    </div>
</div>

</body>
</html>
