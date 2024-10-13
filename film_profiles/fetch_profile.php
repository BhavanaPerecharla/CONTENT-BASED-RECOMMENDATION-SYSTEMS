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

// Get the artist name from the URL parameter
$artistName = isset($_GET['name']) ? $_GET['name'] : '';

// Prepare the SQL statement to prevent SQL injection
$stmt = $conn->prepare("SELECT * FROM bio WHERE Name = ?");
if (!$stmt) {
    echo json_encode(['error' => 'Failed to prepare statement.']);
    exit();
}

$stmt->bind_param("s", $artistName);
$stmt->execute();

// Get the result
$result = $stmt->get_result();
$profile = $result->fetch_assoc();

if ($profile) {
    echo json_encode($profile);
} else {
    echo json_encode(['error' => 'Profile not found.']);
}

// Close the statement and connection
$stmt->close();
$conn->close();
