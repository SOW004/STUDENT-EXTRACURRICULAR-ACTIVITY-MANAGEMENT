<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Clubs</title>
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

        body, html {
            height: 100%;
            overflow-x: hidden;
            font-family: 'Poppins', sans-serif;
            background-color: #f9f9f9;
            background-image: url('<%= request.getContextPath() %>/videos/klu1.jpg');
            color: #333;
            padding-top: 40px; /* Adjust if your header height is different */
        }

        /* Header Styles */
        header {
            background-color: #3cb043;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 2.5rem;
            margin: 0;
            letter-spacing: 1px;
            font-weight: 600;
        }

        /* Club Container Styles */
        .club-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 2rem auto;
            padding: 0 1rem;
            max-width: 1200px;
        }

        .club-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            margin: 1rem;
            max-width: 300px;
            transition: transform 0.3s, box-shadow 0.3s;
            overflow: hidden;
        }

        .club-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(0,0,0,0.2);
        }

        .club-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .club-card-content {
            padding: 1.5rem;
        }

        .club-card h2 {
            font-size: 1.8rem;
            color: #3cb043;
            margin-bottom: 0.5rem;
        }

        .club-card p {
            font-size: 1rem;
            color: #555;
            line-height: 1.6;
            margin-bottom: 1rem;
        }

        .club-card a {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: #3cb043;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 500;
            transition: background-color 0.3s;
            cursor: pointer;
        }

        .club-card a:hover {
            background-color: #37a239;
        }

        /* Modal Styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: white;
            border-radius: 10px;
            padding: 2rem;
            max-width: 600px;
            text-align: center;
            position: relative;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        .modal-content img {
            width: 100%;
            border-radius: 10px;
            max-height: 300px;
            object-fit: cover;
        }

        .modal-content h2 {
            color: #3cb043;
            margin: 1rem 0;
        }

        .modal-content p {
            font-size: 1rem;
            color: #555;
            margin-bottom: 1.5rem;
        }

        .modal-content .close {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 1.5rem;
            cursor: pointer;
            color: #333;
        }

        /* Footer Styles */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem 0;
            margin-top: 2rem;
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

            .club-card {
                max-width: 90%;
            }

            .club-card h2 {
                font-size: 1.5rem;
            }

            .club-card-content {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Clubs at KLU</h1>
    </header>

    <div class="club-container">
        <!-- Club Cards -->
        <div class="club-card" data-club="swara">
            <img src="<%= request.getContextPath() %>/videos/swara.jpg" alt="SWARA">
            <div class="club-card-content">
                <h2>SWARA</h2>
                <p>The music club of KLU, providing a platform for students to explore and showcase their talents in singing and instrumental music.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="kognitiv">
            <img src="<%= request.getContextPath() %>/videos/kognitiv.jpg" alt="KOGNITIV">
            <div class="club-card-content">
                <h2>KOGNITIV</h2>
                <p>A tech and innovation club that helps students enhance their coding and problem-solving abilities.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="mayavi">
            <img src="<%= request.getContextPath() %>/videos/mayavi.jpg" alt="MAYAVI">
            <div class="club-card-content">
                <h2>MAYAVI</h2>
                <p>A dramatics and theatre club that nurtures acting, directing, and scriptwriting skills.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="swecha">
            <img src="<%= request.getContextPath() %>/videos/swecha.jpg" alt="SWECHA">
            <div class="club-card-content">
                <h2>SWECHA</h2>
                <p>A social and environmental club focused on community service and sustainability.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="narthana">
            <img src="<%= request.getContextPath() %>/videos/narthana.jpg" alt="NARTHANA">
            <div class="club-card-content">
                <h2>NARTHANA</h2>
                <p>The dance club of KLU, promoting diverse dance forms from classical to modern styles.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="klradio">
            <img src="<%= request.getContextPath() %>/videos/klradio.jpg" alt="KL RADIO">
            <div class="club-card-content">
                <h2>KL RADIO</h2>
                <p>The university's radio club that engages students in podcasting and broadcasting.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="focus">
            <img src="<%= request.getContextPath() %>/videos/photography.jpg" alt="FOCUS">
            <div class="club-card-content">
                <h2>FOCUS</h2>
                <p>The photography club encourages students to capture moments and express creativity through the lens.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="literati">
            <img src="<%= request.getContextPath() %>/videos/literary.jpg" alt="LITERATI">
            <div class="club-card-content">
                <h2>LITERATI</h2>
                <p>A literary club for enthusiasts of reading, writing, and debating.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>

        <div class="club-card" data-club="roboclub">
            <img src="<%= request.getContextPath() %>/videos/robotics.jpg" alt="ROBOCLUB">
            <div class="club-card-content">
                <h2>ROBOCLUB</h2>
                <p>Dedicated to robotics and automation, allowing students to build and program robots.</p>
                <a href="javascript:void(0);" class="learn-more">Learn More</a>
            </div>
        </div>
    </div>

    <!-- Modal Structure -->
    <div class="modal" id="clubModal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <img src="" alt="Club Image" id="modalImage">
            <h2 id="modalTitle"></h2>
            <p id="modalDescription"></p>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 KLU. All Rights Reserved.</p>
    </footer>

    <!-- JavaScript for Modal -->
    <script>
        const clubs = {
            "swara": {
                "title": "SWARA",
                "image": "<%= request.getContextPath() %>/videos/swara.jpg",
                "description": "SWARA is the music club of KLU, providing a platform for students to explore and showcase their talents in singing and instrumental music. It organizes musical events, concerts, and cultural programs throughout the year."
            },
            "kognitiv": {
                "title": "KOGNITIV",
                "image": "<%= request.getContextPath() %>/videos/kognitiv.jpg",
                "description": "KOGNITIV is a tech and innovation club that helps students enhance their coding and problem-solving abilities. It frequently hosts workshops, hackathons, and competitions."
            },
            "mayavi": {
                "title": "MAYAVI",
                "image": "<%= request.getContextPath() %>/videos/mayavi.jpg",
                "description": "MAYAVI is a dramatics and theatre club that nurtures acting, directing, and scriptwriting skills through plays and theatrical performances."
            },
            "swecha": {
                "title": "SWECHA",
                "image": "<%= request.getContextPath() %>/videos/swecha.jpg",
                "description": "SWECHA is focused on community service and sustainability, leading initiatives for social awareness and environmental protection."
            },
            "narthana": {
                "title": "NARTHANA",
                "image": "<%= request.getContextPath() %>/videos/narthana.jpg",
                "description": "NARTHANA promotes diverse dance forms, from classical to modern styles, and organizes performances for university events."
            },
            "klradio": {
                "title": "KL RADIO",
                "image": "<%= request.getContextPath() %>/videos/klradio.jpg",
                "description": "KL RADIO engages students in podcasting and broadcasting on topics ranging from music and culture to education and current events."
            },
            "focus": {
                "title": "FOCUS",
                "image": "<%= request.getContextPath() %>/videos/photography.jpg",
                "description": "FOCUS is the photography club that encourages students to capture moments and express creativity through photography workshops and photo walks."
            },
            "literati": {
                "title": "LITERATI",
                "image": "<%= request.getContextPath() %>/videos/literary.jpg",
                "description": "LITERATI is a literary club for enthusiasts of reading, writing, and debating. It hosts book discussions, poetry slams, and debate competitions."
            },
            "roboclub": {
                "title": "ROBOCLUB",
                "image": "<%= request.getContextPath() %>/videos/robotics.jpg",
                "description": "ROBOCLUB is dedicated to robotics and automation, allowing students to build and program robots, and participate in competitions."
            }
        };

        document.querySelectorAll('.learn-more').forEach(link => {
            link.addEventListener('click', function() {
                const clubCard = this.closest('.club-card');
                const clubKey = clubCard.getAttribute('data-club');
                const clubData = clubs[clubKey];

                if (clubData) {
                    document.getElementById('modalTitle').textContent = clubData.title;
                    document.getElementById('modalImage').src = clubData.image;
                    document.getElementById('modalDescription').textContent = clubData.description;
                    document.getElementById('clubModal').style.display = 'flex';
                }
            });
        });

        document.querySelector('.close').addEventListener('click', function() {
            document.getElementById('clubModal').style.display = 'none';
        });

        window.addEventListener('click', function(event) {
            if (event.target === document.getElementById('clubModal')) {
                document.getElementById('clubModal').style.display = 'none';
            }
        });
    </script>
</body>
</html>
