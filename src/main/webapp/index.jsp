<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Hub | KLU</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .fade-in {
            opacity: 0;
            animation: fadeIn 2s forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        .hero-section {
            background-image: url('<%= request.getContextPath() %>/videos/klu.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            color: white;
            animation: slideIn 1.5s ease-out;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 4rem;
            margin: 0;
            animation: zoomIn 2s ease-out;
        }

        @keyframes zoomIn {
            0% {
                transform: scale(0);
            }
            100% {
                transform: scale(1);
            }
        }

        .hero-section p {
            font-size: 1.6rem;
            margin: 10px 0 20px;
            animation: fadeInUp 2s ease-out;
        }

        @keyframes fadeInUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .hero-section a {
            padding: 15px 40px;
            background-color: #3cb043;
            color: white;
            text-decoration: none;
            font-size: 1.4rem;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            animation: bounceIn 2s ease-out;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .hero-section a:hover {
            background-color: #2e8b3d;
            transform: scale(1.05);
        }

        @keyframes bounceIn {
            from {
                transform: scale(0);
            }
            to {
                transform: scale(1);
            }
        }

        .about-section {
            padding: 60px 20px;
            background-color: white;
            text-align: center;
            animation: fadeIn 2s ease-out;
        }

        .about-section h2 {
            font-size: 3rem;
            margin-bottom: 20px;
            color: #3cb043;
            letter-spacing: 1px;
        }

        .about-section p {
            font-size: 1.3rem;
            max-width: 800px;
            margin: 0 auto 40px auto;
            color: #555;
            line-height: 1.6;
        }

        .event-gallery {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding: 40px 0;
            gap: 20px;
        }

        .event-item {
            position: relative;
            width: 300px;
            height: 300px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .event-item:hover {
            transform: scale(1.05);
        }

        .event-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .event-item:hover img {
            transform: scale(1.1);
        }

        .event-name {
            position: absolute;
            bottom: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 1.2rem;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .event-item:hover .event-name {
            opacity: 1;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            padding-top: 60px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            animation: modalFadeIn 0.5s ease-out;
        }

        @keyframes modalFadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .modal-content {
            background-color: #fff;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 960px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
            position: relative;
            animation: modalSlideIn 0.5s ease-out;
        }

        @keyframes modalSlideIn {
            from {
                transform: translateY(-50px);
            }
            to {
                transform: translateY(0);
            }
        }

        .close {
            color: #888;
            float: right;
            font-size: 28px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .close:hover,
        .close:focus {
            color: #333;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-header h2 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .modal-body {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .modal-video {
            width: 100%;
            height: 0;
            padding-bottom: 56.25%;
            position: relative;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .modal-video iframe {
            position: absolute;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            border: none;
        }

        .modal-description {
            font-size: 1.1rem;
            color: #555;
            line-height: 1.6;
            text-align: center;
            padding: 0 15px;
        }

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

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <!-- Hero Section -->
    <div class="hero-section">
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <h1>Welcome to KLU Activity Hub</h1>
            <p>Discover events, clubs, and extracurricular activities at Koneru Lakshmaiah University</p>
            <a href="<%= request.getContextPath() %>/events.jsp">Explore Events</a>
        </div>
    </div>

    <!-- About Section -->
    <div class="about-section">
        <h2>About Koneru Lakshmaiah University</h2>
        <p>
            KLU is a premier educational institution known for its excellence in engineering, management, and social sciences. 
            With a sprawling campus, modern facilities, and a focus on holistic development, KLU offers students an unparalleled 
            educational experience that combines academics, research, and extracurricular activities.
        </p>
    </div>

    <!-- Event Gallery Section -->
    <div class="about-section">
        <h2>Past Events</h2>
        <div class="event-gallery">
            <div class="event-item" onclick="openModal('modal1')">
                <img src="<%= request.getContextPath() %>/videos/independence-day.jpg" alt="Independence Day Event">
                <div class="event-name">Independence Day</div>
            </div>
            <div class="event-item" onclick="openModal('modal2')">
                <img src="<%= request.getContextPath() %>/videos/world-water-day.jpg" alt="World Water Day Event">
                <div class="event-name">World Water Day</div>
            </div>
            <div class="event-item" onclick="openModal('modal3')">
                <img src="<%= request.getContextPath() %>/videos/hackathon-2023.jpg" alt="Hackathon 2023">
                <div class="event-name">Hackathon 2023</div>
            </div>
        </div>
    </div>

    <!-- Modals -->
    <div id="modal1" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('modal1')">&times;</span>
            <div class="modal-body">
                <div class="modal-video">
                    <iframe src="https://www.youtube.com/embed/LTgve52vyHM" allowfullscreen></iframe>
                </div>
                <div class="modal-header">
                    <h2>Independence Day</h2>
                </div>
                <div class="modal-description">
                    A grand celebration of India's Independence Day with flag hoisting, cultural programs, and student performances.
                </div>
            </div>
        </div>
    </div>

    <div id="modal2" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('modal2')">&times;</span>
            <div class="modal-body">
                <div class="modal-video">
                    <iframe src="https://www.youtube.com/embed/VAUFJCkSOls" allowfullscreen></iframe>
                </div>
                <div class="modal-header">
                    <h2>World Water Day</h2>
                </div>
                <div class="modal-description">
                    A campaign aimed at raising awareness about water conservation and sustainability, involving talks, workshops, and more.
                </div>
            </div>
        </div>
    </div>

    <div id="modal3" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('modal3')">&times;</span>
            <div class="modal-body">
                <div class="modal-video">
                    <iframe src="https://www.youtube.com/embed/9SXmhCaXkzI&t=10s" allowfullscreen></iframe>
                </div>
                <div class="modal-header">
                    <h2>Hackathon 2023</h2>
                </div>
                <div class="modal-description">
                    A thrilling 24-hour coding event where students collaborated to solve real-world problems with creative software solutions.
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 KLU | <a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>
    </footer>

    <!-- JavaScript for Modal -->
    <script>
        function openModal(modalId) {
            document.getElementById(modalId).style.display = "block";
        }

        function closeModal(modalId) {
            document.getElementById(modalId).style.display = "none";
        }

        window.onclick = function(event) {
            const modals = document.querySelectorAll('.modal');
            modals.forEach(modal => {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            });
        }
    </script>

</body>

</html>
