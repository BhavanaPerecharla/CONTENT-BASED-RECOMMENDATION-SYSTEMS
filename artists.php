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

// Fetch the first 15 artist profiles ordered by Name
$sql = "SELECT ID, Name, Profession, Born, NotableWorks, DebutFilm 
        FROM Bio 
        ORDER BY Name ASC 
        LIMIT 15";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='profile-box'>
                <h2>" . htmlspecialchars($row['Name']) . "</h2>
                <p><strong>Profession: </strong>" . htmlspecialchars($row['Profession']) . "</p>
                <p><strong>Born: </strong>" . htmlspecialchars($row['Born']) . "</p>
                <p><strong>Notable Works: </strong>" . htmlspecialchars($row['NotableWorks']) . "</p>
                <p><strong>Debut Film: </strong>" . htmlspecialchars($row['DebutFilm']) . "</p>
                <a href='artist_details.php?ID=" . htmlspecialchars($row['ID']) . "'><button>Show More</button></a>
              </div>";
    }
} else {
    echo "No artists found.";
}

$conn->close();
?>
