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

// Get the search query from the URL
$query = isset($_GET['query']) ? $_GET['query'] : '';

if ($query !== '') {
    // Prepare SQL to search for artist names matching the query
    $sql = "SELECT Name FROM Bio WHERE Name LIKE ? LIMIT 5";
    $stmt = $conn->prepare($sql);
    $searchTerm = "%" . $query . "%";
    $stmt->bind_param("s", $searchTerm);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Output each matching artist name as a suggestion
        while ($row = $result->fetch_assoc()) {
            echo "<li class='suggestion-item' onclick='selectArtist(\"" . htmlspecialchars($row['Name']) . "\")'>" . htmlspecialchars($row['Name']) . "</li>";
        }
    } else {
        // If no matches are found
        echo "<li class='suggestion-item'>No suggestions found</li>";
    }

    $stmt->close();
}

$conn->close();
?>
