<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Profiles";

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname) or die("Unable to connect");

// Check connection
if ($conn->connect_error) {
    echo json_encode(['error' => 'Connection failed: ' . $conn->connect_error]);
    exit();
}

// Get the search term from the URL parameter
$searchTerm = isset($_GET['term']) ? $_GET['term'] : '';

// Prepare the SQL statement to prevent SQL injection
$stmt = $conn->prepare("SELECT Name FROM bio WHERE Name LIKE ?");
if (!$stmt) {
    echo json_encode(['error' => 'Failed to prepare statement.']);
    exit();
}

$searchTerm = "%$searchTerm%";
$stmt->bind_param("s", $searchTerm);
$stmt->execute();

// Get the result
$result = $stmt->get_result();
$suggestions = [];

while ($row = $result->fetch_assoc()) {
    $suggestions[] = $row['Name'];
}

// Return the suggestions as a JSON array
echo json_encode($suggestions);

// Close the statement and connection
$stmt->close();
$conn->close();

