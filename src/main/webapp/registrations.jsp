<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Registration</title>
    <style>
        /* General Styling */
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f2f2f2;
            background-image: url('<%= request.getContextPath() %>/videos/klu1.jpg');
            background-size: cover;
            background-attachment: fixed;
            padding-top: 80px;
            color: #333;
        }

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

        .calendar {
            margin: 30px auto;
            text-align: center;
        }

        .date-label {
            color: white;
            font-weight: bold;
            font-size: 1.5rem;
        }

        .calendar input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Event Container */
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
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin: 20px;
            max-width: 300px;
            overflow: hidden;
            transition: all 0.4s ease-in-out;
            transform: scale(1);
            cursor: pointer;
        }

        .event-card:hover {
            transform: translateY(-10px) scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .event-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: all 0.3s ease-in-out;
        }

        .event-card:hover img {
            transform: scale(1.1);
        }

        .event-card-content {
            padding: 20px;
            text-align: center;
        }

        .event-card h2 {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 15px;
        }

        .event-card p {
            font-size: 1rem;
            color: #555;
            line-height: 1.5;
            margin-bottom: 10px;
        }

        .event-date {
            font-size: 0.9rem;
            color: #777;
        }

        .register-btn {
            display: inline-block;
            background-color: #3cb043;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        .register-btn:hover {
            background-color: #37a239;
        }

        /* Popup styling */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
            transition: all 0.3s ease;
        }

        .popup-content {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            max-width: 500px;
            width: 80%;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            transform: scale(0.8);
            opacity: 0;
            transition: all 0.3s ease-in-out;
        }

        .popup.show .popup-content {
            transform: scale(1);
            opacity: 1;
        }

        .close-popup {
            background-color: #f44336;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        .close-popup:hover {
            background-color: #e53935;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 40px;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .event-card, .popup-content {
            animation: fadeIn 0.5s ease-in;
        }
        .event-card img {
   		 	width: 100%;
    		height: 200px;
    		object-fit: cover;
    		aspect-ratio: 1 / 1; /* Ensure a 1:1 square ratio */
    		border-top-left-radius: 10px;
    		border-top-right-radius: 10px;
    		transition: all 0.3s ease-in-out;
		}
        
    </style>
</head>
<body>

<header>
    <h1>Event Registration</h1>
</header>

<div class="calendar">
    <label for="event-date" class="date-label">Select a date: </label>
    <input type="date" id="event-date">
</div>

<div class="event-container" id="event-container"></div>

<footer>
    <p>&copy; 2024 KLU. All rights reserved.</p>
</footer>

<!-- Registration Popup -->
<div class="popup" id="register-popup">
    <div class="popup-content">
        <h2>Register for Event</h2>
        <form id="registration-form">
            <label for="name">Name: </label>
            <input type="text" id="name" required><br><br>
            <label for="email">Email: </label>
            <input type="email" id="email" required><br><br>
            <button type="submit" class="register-btn">Submit Registration</button>
        </form>
        <button class="close-popup" id="close-popup">Close</button>
    </div>
</div>

<!-- Success Popup -->
<div class="popup" id="success-popup">
    <div class="popup-content">
        <h2>Registration Successful!</h2>
        <p>Your registration has been completed.</p>
        <button class="close-popup" id="close-success-popup">Close</button>
    </div>
</div>

<script>
    const events = [
        {
            title: 'Food Fest',
            date: '2024-11-15',
            image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqlX3CiZSH5MhFEoowfzf0ynZU9GYifeuSXw&s',
            description: 'Join us for a celebration of culinary delights.'
        },
        {
            title: 'Sports Day',
            date: '2024-12-10',
            image: '<%= request.getContextPath() %>/videos/sportsday.jpg',
            description: 'Participate in various sports activities!'
        },
        {
            title: 'Cultural Fest',
            date: '2025-01-20',
            image: '<%= request.getContextPath() %>/videos/culturalfest.jpg',
            description: 'A vibrant showcase of music, dance, and art.'
        },
        {
            title: 'Hackathon',
            date: '2025-03-10',
            image: '<%= request.getContextPath() %>/videos/hackathon.jpg',
            description: 'Collaborate to build innovative solutions.'
        }
    ];

    document.getElementById('event-date').addEventListener('change', function() {
        const selectedDate = this.value;
        const eventContainer = document.getElementById('event-container');
        eventContainer.innerHTML = '';

        const filteredEvents = events.filter(event => event.date === selectedDate);
        if (filteredEvents.length === 0) {
            eventContainer.innerHTML = '<p>No events available for this date.</p>';
        } else {
            filteredEvents.forEach(event => {
                eventContainer.innerHTML += `
                    <div class="event-card">
                        <img src="${event.image}" alt="${event.title}">
                        <div class="event-card-content">
                            <h2>${event.title}</h2>
                            <p>${event.description}</p>
                            <div class="event-date">Date: ${event.date}</div>
                            <button class="register-btn" onclick="openPopup()">Register</button>
                        </div>
                    </div>
                `;
            });
        }
    });

    function openPopup() {
        document.getElementById('register-popup').classList.add('show');
        document.getElementById('register-popup').style.display = 'flex';
    }

    document.getElementById('close-popup').addEventListener('click', function() {
        document.getElementById('register-popup').classList.remove('show');
        setTimeout(() => document.getElementById('register-popup').style.display = 'none', 300);
    });

    document.getElementById('registration-form').addEventListener('submit', function(e) {
        e.preventDefault();
        document.getElementById('register-popup').classList.remove('show');
        setTimeout(() => document.getElementById('register-popup').style.display = 'none', 300);
        document.getElementById('success-popup').classList.add('show');
        document.getElementById('success-popup').style.display = 'flex';
    });

    document.getElementById('close-success-popup').addEventListener('click', function() {
        document.getElementById('success-popup').classList.remove('show');
        setTimeout(() => document.getElementById('success-popup').style.display = 'none', 300);
    });
</script>

</body>
</html>
