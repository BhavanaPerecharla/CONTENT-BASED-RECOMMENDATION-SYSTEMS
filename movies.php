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

// Fetch the first 10 top-rated movies
$sql = "SELECT MovieID, MovieName, YearReleased, Genre, Rating, StreamingAt 
        FROM Movies 
        ORDER BY Rating DESC 
        LIMIT 15";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='movie-box'>
                <h2>" . $row['MovieName'] . " (" . $row['YearReleased'] . ")</h2>
                <p><strong>Genre: </strong>" . $row['Genre'] . "</p>
                <p><strong>Rating: </strong>" . $row['Rating'] . "</p>
                <p><strong>Streaming At: </strong>" . $row['StreamingAt'] . "</p>
                <a href='movie_details.php?MovieID=" . $row['MovieID'] . "'><button>Show More</button></a>
              </div>";
    }
} else {
    echo "No movies found.";
}

$conn->close();
?>
