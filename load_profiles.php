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

// Fetch 15 artist profiles from the database, ordered by ID
$sql = "SELECT ID, Name, Profession, Born, NotableWorks, DebutFilm FROM Bio ORDER BY ID LIMIT 15 OFFSET $offset";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output the profiles in a grid
    while ($row = $result->fetch_assoc()) {
        echo "<div class='profile-box'>
                <h2>" . htmlspecialchars($row['Name']) . "</h2>
                <p><strong>Profession: </strong>" . htmlspecialchars($row['Profession']) . "</p>
                <p><strong>Born: </strong>" . htmlspecialchars($row['Born']) . "</p>
                <p><strong>Notable Works: </strong>" . htmlspecialchars($row['NotableWorks']) . "</p>
                <p><strong>Debut Film: </strong>" . htmlspecialchars($row['DebutFilm']) . "</p>
                <button onclick='showDetails(" . $row['ID'] . ")'>Show More</button>
              </div>";
    }
} else {
    echo "No more profiles.";
}

$conn->close();
?>
