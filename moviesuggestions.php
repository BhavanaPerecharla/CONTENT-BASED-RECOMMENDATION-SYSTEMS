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

// Get the search query from the request
$query = isset($_GET['query']) ? $_GET['query'] : '';

// Prepare the SQL statement to fetch movie names matching the query
$sql = "SELECT MovieName FROM Movies WHERE MovieName LIKE ? LIMIT 10";
$stmt = $conn->prepare($sql);
$searchTerm = "%" . $query . "%"; // Add wildcards for partial matches
$stmt->bind_param("s", $searchTerm);
$stmt->execute();
$result = $stmt->get_result();

// Output the matching movie names as a list
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='suggestion-item' onclick='selectMovie(\"" . addslashes($row['MovieName']) . "\")'>" . htmlspecialchars($row['MovieName']) . "</div>";
    }
} else {
    echo "<div class='suggestion-item'>No matches found</div>";
}

$conn->close();
?>
