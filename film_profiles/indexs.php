<?php
session_start();

// Check if the user is logged in (i.e., email is in session or cookie)
if (isset($_SESSION['user_email'])) {
    $email = $_SESSION['user_email'];
} elseif (isset($_COOKIE['user_email'])) {
    $email = $_COOKIE['user_email'];
} else {
    // If the user is not logged in, redirect to login page
    header("Location: login.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Database</title>
    <link rel="stylesheet" href="moviestyle.css">
    <style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');

body {
    font-family: 'Calisto MT', 'Times New Roman', serif;
    margin: 0;
    padding: 0;
}
.bold-text {
    font-weight: bold;
}

/* Applying strong style */
strong {
    font-weight: bold;
}
/* Sidenav styles */
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background: linear-gradient(135deg, #7b4397, #dc2430); /* Darker gradient for a stylish look */
    overflow-x: hidden;
    transition: width 0.5s ease-in-out, background 0.8s ease; /* Smooth opening animation */
    padding-top: 40px;
    box-shadow: 5px 0 15px rgba(0, 0, 0, 0.5); /* Adds a shadow to give depth */
}

.sidenav a {
    padding: 10px 10px 10px 40px;
    text-decoration: none;
    font-size: 22px;
    font-weight: bold;
    color: #f4f4f4;
    display: block;
    transition: color 0.3s ease, padding-left 0.4s ease;
    font-family: 'Calisto MT', 'Times New Roman', serif;
}

.sidenav a:hover {
    color: #ffe600; /* Bright yellow on hover for contrast */
    padding-left: 60px;
    transform: scale(1.1); /* Slight scale effect on hover */
}

.sidenav .closebtn {
    position: absolute;
    top: 10px;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
    color: #f4f4f4;
    transition: color 0.3s ease;
}

.sidenav .closebtn:hover {
    color: #ff6347; /* Tomato color for hover effect */
}

/* Open button with enhanced styles */
.open-nav-btn {
    font-size: 19px;
    font-family: 'Calisto MT', 'Times New Roman', serif;
    font-weight: bold;
    color: #ffffff;
    padding: 10px 15px;
    background-color: #feb47b;
    background-image: linear-gradient(45deg, #ff6a00, #ee0979); /* More vibrant gradient */
    border: none;
    border-radius: 50px; /* Circular button for a modern look */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow for depth */
    transition: background 0.4s ease, transform 0.3s ease;
    position: absolute;
    top: 20px;
    left: 10px;
    cursor: pointer;
    animation: pulse 1.5s infinite; /* Pulsating effect */
}
.open-nav-btn, .profile-btn {
    font-size: 19px;
    font-family: 'Calisto MT', 'Times New Roman', serif;
    font-weight: bold;
    color: #ffffff;
    padding: 10px 15px;
    background-color: #feb47b;
    background-image: linear-gradient(45deg, #ff6a00, #ee0979); /* More vibrant gradient */
    border: none;
    border-radius: 50px; /* Circular button for a modern look */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow for depth */
    transition: background 0.4s ease, transform 0.3s ease;
    cursor: pointer;
    animation: pulse 1.5s infinite; /* Pulsating effect */
    position: absolute;
}
/* Hover and focus states */
.open-nav-btn:hover ,.profile-btn:hover {
    background-image: linear-gradient(45deg, #ff0055, #ff7e5f); /* New hover gradient */
    transform: scale(1.1); /* Larger scale on hover */
}

.open-nav-btn:focus, .profile-btn:focus  {
    outline: 2px solid #ff0055;
}
.profile-btn {
    top: 20px;
    right: 10px;
}
/* Pulsating animation for button */
@keyframes pulse {
    0% {
        transform: scale(1);
        box-shadow: 0 0 10px rgba(255, 0, 85, 0.4);
    }
    50% {
        transform: scale(1.05);
        box-shadow: 0 0 20px rgba(255, 0, 85, 0.7);
    }
    100% {
        transform: scale(1);
        box-shadow: 0 0 10px rgba(255, 0, 85, 0.4);
    }
}

/* Transition for main content */
#main-content {
    transition: margin-left 0.5s ease;
    padding: 20px;
    margin-left: 0;
}

</style>
</head>
<body>

<!-- Sidenav HTML -->
<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="indexs.php">Home</a>
        <a href="about.html">About</a>
        <a href="services.html">Services</a>
        <a href="clients.html">Clients</a>
        <a href="contact.html">Contact</a>
        <a href="Login.html">Log Out</a>
</div>

<!-- Open button for sidenav -->
<span class="open-nav-btn" onclick="openNav()">&#9776; Menu</span>
<button class="profile-btn" onclick="window.location.href='Profile.php'">Profile</button>

<!-- Main content of the page -->
<div id="main-content">
    <div class="container">
        <h1>Movie Database</h1>

        <form method="post" action="index.php" class="search-bar" autocomplete="off">
            <input type="text" id="searchQuery" name="searchQuery" placeholder="Search for a movie..." onkeyup="showSuggestions(this.value)">
            <div id="suggestions" class="suggestions-list"></div> <!-- Container for suggestions -->
            <button type="submit" name="search">Search</button>
        </form>

        <div id="movie-list" class="movie-grid" style="max-height: 900px; overflow-y: auto;">
            <?php include 'movies.php'; ?>
        </div>

        <button id="show-more" onclick="loadMoreMovies()">Show More</button>
    </div>
</div>
<div class="info-box">
    <h2>WANT TO GET TO KNOW MORE?</h2>
    <p>ABOUT YOUR FAVOURITE ARTISTS</p>
    <button class="open-btn" onclick="location.href='art.php'">CLICK TO FIND OUT</button>
</div>

<script>
    let offset = 15; // Start loading movies from the 21st
    function loadMoreMovies() {
        fetch(`movie_list.php?offset=${offset}`)
            .then(response => response.text())
            .then(data => {
                document.getElementById('movie-list').innerHTML += data;
                offset += 10;
            });
    }

    function showSuggestions(query) {
        const suggestionsBox = document.getElementById('suggestions');
        const movieGrid = document.getElementById('movie-list');

        if (query.length === 0) {
            suggestionsBox.innerHTML = '';
            movieGrid.style.marginTop = '20px';
            return;
        }

        fetch(`moviesuggestions.php?query=${encodeURIComponent(query)}`)
            .then(response => response.text())
            .then(data => {
                suggestionsBox.innerHTML = data;

                if (data.trim() !== '') {
                    movieGrid.style.marginTop = suggestionsBox.offsetHeight + 'px';
                } else {
                    movieGrid.style.marginTop = '20px';
                }
            })
            .catch(error => console.error('Error fetching suggestions:', error));
    }

    function selectMovie(movieName) {
        document.getElementById('searchQuery').value = movieName;
        document.getElementById('suggestions').innerHTML = '';
    }

    function openNav() {
        document.getElementById("mySidenav").style.width = "200px"; /* Reduced width */
        document.getElementById("main-content").style.marginLeft = "200px";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main-content").style.marginLeft = "0";
    }
</script>

</body>
</html>