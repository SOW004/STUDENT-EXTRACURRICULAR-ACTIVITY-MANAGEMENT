<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    boolean loggedIn = (session != null && session.getAttribute("username") != null);
%>

<!DOCTYPE html>
<html>
<head>
    <title>College Extra-Curricular Activities</title>
    <!-- Include Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600&display=swap" rel="stylesheet">
    <!-- Include Font Awesome for Icons (Optional) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        /* CSS Styles here */
        /* ... (We'll include the CSS styles below) ... */
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">
            <a href="<%= request.getContextPath() %>/index.jsp">
                <img src="<%= request.getContextPath() %>/videos/logo.jpg" alt="Logo">
            </a>
        </div>

        <div class="search-bar">
            <input type="text" placeholder="Search...">
        </div>

        <nav>
            <ul>
                <% if (!loggedIn) { %>
                    <li><a href="<%= request.getContextPath() %>/login.jsp">Login</a></li>
                <% } else { %>
                    <li><a href="<%= request.getContextPath() %>/logout.jsp">Logout</a></li>
                <% } %>
                <li><a href="<%= request.getContextPath() %>/About.jsp">About</a></li>
                <li><a href="<%= request.getContextPath() %>/events.jsp">Events</a></li>
                <li><a href="<%= request.getContextPath() %>/registrations.jsp">Registrations</a></li>
                <li><a href="<%= request.getContextPath() %>/contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </div>

    <!-- Rest of your page content -->

</body>
</html>

<style>
/* General Reset */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Poppins', sans-serif;
}

/* Navbar Styles */
.navbar {
    position: fixed;
    top: 0;
    width: 100%;
    background-color: #ffffff;
    padding: 0.5rem 1rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    z-index: 1000;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.logo img {
    height: 50px;
    width: auto;
}

/* Search Bar Styles */
.search-bar {
    flex-grow: 1;
    margin: 0 1rem;
    position: relative;
}

.search-bar input[type="text"] {
    width: 100%;
    max-width: 400px;
    padding: 0.5rem 1rem;
    border: 1px solid #ddd;
    border-radius: 25px;
    font-size: 1rem;
    outline: none;
    transition: all 0.3s ease;
}

.search-bar input[type="text"]:focus {
    border-color: #c0392b;
    box-shadow: 0 0 5px rgba(192, 57, 43, 0.5);
}

/* Navigation Menu Styles */
nav ul {
    list-style: none;
    display: flex;
    align-items: center;
}

nav ul li {
    margin: 0 0.5rem;
}

nav ul li a {
    color: #333;
    text-decoration: none;
    font-size: 1rem;
    padding: 0.5rem 0.75rem;
    border-radius: 5px;
    transition: background-color 0.3s ease, color 0.3s ease;
}

/* Updated hover color */
nav ul li a:hover {
    background-color: #3cb043; /* Changed from red to green */
    color: #ffffff;
}

/* Active Link Styling (Optional) */
nav ul li a.active {
    background-color: #3cb043;
    color: #ffffff;
}

/* Responsive Styles */
@media (max-width: 768px) {
    .navbar {
        flex-wrap: wrap;
        padding: 1rem;
    }

    .search-bar {
        order: 3;
        width: 100%;
        margin: 1rem 0;
    }

    nav ul {
        width: 100%;
        justify-content: space-around;
        order: 2;
    }

    .logo {
        order: 1;
        width: 100%;
        text-align: center;
        margin-bottom: 1rem;
    }
}
</style>

