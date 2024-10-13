<?php
// Start the session
session_start();
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Profiles";

try {
    // Create a connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Fetch form data
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Use a prepared statement to fetch the stored password
    $stmt = $conn->prepare("SELECT password FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $hashed_password = $row['password'];

        // Verify the entered password against the hashed password from the database
        if (password_verify($password, $hashed_password)) {
            // Set session variable for the user
            $_SESSION['user_email'] = $email; // Store user email in session
            header("Location: index.html"); // Redirect to homepage or dashboard
            exit();
        } else {
            // Redirect back to login page with error message
            header("Location: login.html?error=" . urlencode("Invalid password!"));
            exit();
        }
    } else {
        // Redirect back to login page with error message
        header("Location: login.html?error=" . urlencode("No user found with this email!"));
        exit();
    }

} catch (mysqli_sql_exception $e) {
    // Log the error and show a generic error message to the user
    error_log("Connection failed: " . $e->getMessage());
    echo "An error occurred. Please try again later.";
}

// Close the database connection
$conn->close();
?>
