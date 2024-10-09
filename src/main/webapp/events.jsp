<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Events</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            color: #333;
            background-image: url('<%= request.getContextPath() %>/videos/klu1.jpg');
            background-size: cover;
            background-attachment: fixed;
            padding-top: 80px;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
        }

        h1 {
            font-size: 36px;
            margin: 20px 0;
        }

        .event-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px auto;
            padding: 20px;
            max-width: 1200px;
        }

        .event-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px;
            max-width: 300px;
            transition: transform 0.3s;
        }

        .event-card:hover {
            transform: scale(1.05);
        }

        .event-card img {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .event-card-content {
            padding: 20px;
        }

        .event-card h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        .event-card p {
            font-size: 16px;
            color: #666;
            line-height: 1.6;
        }

        .event-date {
            font-size: 14px;
            color: #999;
            margin-top: 10px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 40px;
        }

        body, html {
            height: 100%;
            overflow-x: hidden;
        }
    </style>
</head>
<body>
    <header>
        <h1>Upcoming Events</h1>
    </header>

    <div class="event-container">
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/foodfest.jpg" alt="Food Fest">
            <div class="event-card-content">
                <h2>Food Fest</h2>
                <p>Join us for a celebration of culinary delights featuring dishes from across India.</p>
                <div class="event-date">Date: November 15, 2024</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/sportsday.jpg" alt="Sports Day">
            <div class="event-card-content">
                <h2>Sports Day</h2>
                <p>Participate in various sports activities and showcase your athletic skills!</p>
                <div class="event-date">Date: December 10, 2024</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/culturalfest.jpg" alt="Cultural Fest">
            <div class="event-card-content">
                <h2>Cultural Fest</h2>
                <p>A vibrant showcase of music, dance, and art from different cultures.</p>
                <div class="event-date">Date: January 20, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/debate.jpg" alt="Debate Competition">
            <div class="event-card-content">
                <h2>Debate Competition</h2>
                <p>Engage in intellectual discussions and showcase your oratory skills.</p>
                <div class="event-date">Date: February 5, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/hackathon.jpg" alt="Hackathon">
            <div class="event-card-content">
                <h2>Hackathon</h2>
                <p>Collaborate to build innovative solutions in a 24-hour coding challenge.</p>
                <div class="event-date">Date: March 10, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/charityrun.jpg" alt="Charity Run">
            <div class="event-card-content">
                <h2>Charity Run</h2>
                <p>Participate in a run to support local charities and make a difference!</p>
                <div class="event-date">Date: April 15, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/scienceexhibition.jpg" alt="Science Exhibition">
            <div class="event-card-content">
                <h2>Science Exhibition</h2>
                <p>Explore innovative projects and experiments from students and experts.</p>
                <div class="event-date">Date: May 20, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/environmentawareness.jpg" alt="Environmental Awareness">
            <div class="event-card-content">
                <h2>Environmental Awareness</h2>
                <p>Join us to learn about sustainable practices and protecting our planet.</p>
                <div class="event-date">Date: June 25, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/photography.jpg" alt="Photography Contest">
            <div class="event-card-content">
                <h2>Photography Contest</h2>
                <p>Showcase your photography skills and win exciting prizes!</p>
                <div class="event-date">Date: July 30, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/musicfest.jpg" alt="Music Fest">
            <div class="event-card-content">
                <h2>Music Fest</h2>
                <p>Enjoy performances by various artists and celebrate music.</p>
                <div class="event-date">Date: August 15, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/artworkshop.jpg" alt="Art Workshop">
            <div class="event-card-content">
                <h2>Art Workshop</h2>
                <p>Learn new techniques and express your creativity in this hands-on workshop.</p>
                <div class="event-date">Date: September 10, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/codingbootcamp.jpg" alt="Coding Bootcamp">
            <div class="event-card-content">
                <h2>Coding Bootcamp</h2>
                <p>Join us for an intensive coding bootcamp and enhance your programming skills.</p>
                <div class="event-date">Date: October 5, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/dancecompetititon.jpg" alt="Dance Competition">
            <div class="event-card-content">
                <h2>Dance Competition</h2>
                <p>Show your moves and compete for the title of best dancer!</p>
                <div class="event-date">Date: November 20, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/dramaworkshop.jpg" alt="Drama Workshop">
            <div class="event-card-content">
                <h2>Drama Workshop</h2>
                <p>Enhance your acting skills through various exercises and performances.</p>
                <div class="event-date">Date: December 18, 2025</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/quiznight.jpg" alt="Quiz Night">
            <div class="event-card-content">
                <h2>Quiz Night</h2>
                <p>Test your knowledge in a fun quiz competition with friends!</p>
                <div class="event-date">Date: January 28, 2026</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/careerfair.jpg" alt="Career Fair">
            <div class="event-card-content">
                <h2>Career Fair</h2>
                <p>Meet potential employers and explore career opportunities.</p>
                <div class="event-date">Date: February 22, 2026</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/codingchallenge.jpg" alt="Coding Challenge">
            <div class="event-card-content">
                <h2>Coding Challenge</h2>
                <p>Compete with peers to solve programming challenges in real-time.</p>
                <div class="event-date">Date: March 15, 2026</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/workshop.jpg" alt="Skill Development Workshop">
            <div class="event-card-content">
                <h2>Skill Development Workshop</h2>
                <p>Enhance your skills in various fields through engaging sessions.</p>
                <div class="event-date">Date: April 10, 2026</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/bookfair.jpg" alt="Book Fair">
            <div class="event-card-content">
                <h2>Book Fair</h2>
                <p>Discover new books and authors at our annual book fair!</p>
                <div class="event-date">Date: May 5, 2026</div>
            </div>
        </div>
        
        <div class="event-card">
            <img src="<%= request.getContextPath() %>/videos/filmfestival.jpg" alt="Film Festival">
            <div class="event-card-content">
                <h2>Film Festival</h2>
                <p>Enjoy screenings of independent films and meet the filmmakers.</p>
                <div class="event-date">Date: June 20, 2026</div>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 KLU. All rights reserved.</p>
    </footer>
</body>
</html>
