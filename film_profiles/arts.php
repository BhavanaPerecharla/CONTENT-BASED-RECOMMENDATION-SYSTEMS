<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Profiles"; // Use your actual database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Search functionality
$searchQuery = "";
if (isset($_POST['search'])) {
    $searchQuery = $_POST['searchQuery'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Profiles</title>
    <link rel="stylesheet" href="profilestyle.css"> <!-- Link to your stylesheet -->
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
    <div class="container">
        <h1>Artist Profiles</h1>

        <!-- Search form -->
        <form method="post" action="artist_profiles.php" class="search-bar" autocomplete="off">
            <input type="text" id="searchQuery" name="searchQuery" placeholder="Search for an artist..." onkeyup="showSuggestions(this.value)">
            <div id="suggestions" class="suggestions-list"></div> <!-- Container for suggestions -->
            <button type="submit" name="search">Search</button>
        </form>
        <button class="profile-btn" onclick="window.location.href='Profile.php'">Profile</button>
        <!-- Artist Profiles Results Container -->
        <div id="profile-grid" class="profile-grid" style="max-height: 900px; overflow-y: auto;">

            <?php
            // Query to fetch artist profiles based on search query or display top 10
            $sql = "SELECT * FROM Bio WHERE Name LIKE '%$searchQuery%' ORDER BY Name ASC LIMIT 10";
            $result = $conn->query($sql);

            // Display artist profile listings in grid format
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "
                    <div class='profile-box'>
                        <h2>" . htmlspecialchars($row['Name']) . "</h2>
                        <p><strong>Profession: </strong>" . htmlspecialchars($row['Profession']) . "</p>
                        <p><strong>Born: </strong>" . htmlspecialchars($row['Born']) . "</p>
                        <p><strong>Notable Works: </strong>" . htmlspecialchars($row['NotableWorks']) . "</p>
                        <a href='artist_details.php?ID=" . htmlspecialchars($row['ID']) . "'><button>Show More</button></a>
                    </div>";
                }
            } else {
                echo "<p>No artists found matching the search query.</p>";
            }

            $conn->close();
            ?>
        </div>
        <div class="back-button">
            <button onclick="window.history.back()">Back</button>
        </div>
    </div>

    <script>
    function showSuggestions(query) {
        const suggestionsBox = document.getElementById('suggestions');
        const profileGrid = document.getElementById('profile-grid');

        if (query.length === 0) {
            suggestionsBox.innerHTML = ''; // Clear suggestions when query is empty
            profileGrid.style.marginTop = '20px'; // Reset the profile grid margin
            return;
        }

        // Fetch suggestions from the server
        fetch(`auto_complete.php?query=${encodeURIComponent(query)}`)
            .then(response => response.text())
            .then(data => {
                suggestionsBox.innerHTML = data; // Populate suggestions

                // If suggestions exist, push the profile grid down
                if (data.trim() !== '') {
                    profileGrid.style.marginTop = suggestionsBox.offsetHeight + 'px';
                } else {
                    profileGrid.style.marginTop = '20px'; // Reset margin if no suggestions
                }
            })
            .catch(error => console.error('Error fetching suggestions:', error));
    }

    function selectArtist(artistName) {
        document.getElementById('searchQuery').value = artistName; // Set the selected artist in the input field
        document.getElementById('suggestions').innerHTML = ''; // Clear suggestions
    }
    </script>

</body>
</html>
