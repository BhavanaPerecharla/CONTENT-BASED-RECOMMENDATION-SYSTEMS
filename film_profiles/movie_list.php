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

// Get the offset from the query string
$offset = isset($_GET['offset']) ? intval($_GET['offset']) : 0;

// Fetch the next 10 top-rated movies, ordered by Rating in descending order
$sql = "SELECT MovieID, MovieName, YearReleased, Genre, Rating, StreamingAt 
        FROM Movies 
        ORDER BY Rating DESC 
        LIMIT 12 OFFSET $offset";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output the movies in a 2-column grid
    $count = 0;
    while ($row = $result->fetch_assoc()) {
        if ($count % 3 == 0) {
            // Start a new row
            echo "<div class='row'>";
        }

        // Display the movie details in a movie box
        echo "<div class='movie-box'>
                <h2>" . $row['MovieName'] . " (" . $row['YearReleased'] . ")</h2>
                <p><strong>Genre: </strong>" . $row['Genre'] . "</p>
                <p><strong>Rating: </strong>" . $row['Rating'] . "</p>
                <p><strong>Streaming At: </strong>" . $row['StreamingAt'] . "</p>
                <a href='movie_details.php?MovieID=" . $row['MovieID'] . "'><button>Show More</button></a>
              </div>";

        if ($count % 3 == 0) {
            // Close the row after 2 movies
            echo "</div>";
        }

        $count++;
    }

    // If the last row isn't closed, close it
    if ($count % 3 != 0) {
        echo "</div>";
    }
} else {
    echo "No more movies.";
}

$conn->close();
?>
