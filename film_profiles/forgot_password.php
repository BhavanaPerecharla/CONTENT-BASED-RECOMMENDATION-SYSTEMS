<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Profiles";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $conn->real_escape_string($_POST['email']);
    $dob = $conn->real_escape_string($_POST['dob']);
    $dob = date("Y-m-d", strtotime($dob)); // Convert to correct format (YYYY-MM-DD)

    // Query to check if the email and DOB exist in the database
    $sql = "SELECT * FROM users WHERE email = '$email' AND dob = '$dob'";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        // Redirect to the reset password page with the email parameter
        header("Location: reset-password.html?email=" . urlencode($email));
        exit();
    } else {
        echo "<script>alert('Invalid email or date of birth. Please try again.'); window.location.href='forgot-password.html';</script>";
    }
}

$conn->close();
?>
