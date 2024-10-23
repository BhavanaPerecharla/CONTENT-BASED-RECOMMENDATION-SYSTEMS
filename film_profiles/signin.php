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
    if (isset($_POST['email']) && isset($_POST['password'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Prepare and execute the SQL statement to fetch user password
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
                $_SESSION['user_email'] = $email; // Store the user email in session

                // Optionally set a cookie to store the user's email, valid for 1 hour
                setcookie("user_email", $email, time() + 122600, "/"); 

                // Redirect to homepage or dashboard
                header("Location: indexs.php");
                exit();
            } else {
                // Invalid password
                header("Location: login.html?error=" . urlencode("Invalid password!"));
                exit();
            }
        } else {
            // No user found with this email
            header("Location: login.html?error=" . urlencode("No user found with this email!"));
            exit();
        }
    } else {
        header("Location: login.html?error=" . urlencode("Please enter both email and password!"));
        exit();
    }

} catch (mysqli_sql_exception $e) {
    // Log the error and show a generic error message to the user
    error_log("Connection failed: " . $e->getMessage());
    header("Location: login.html?error=" . urlencode("An error occurred. Please try again later."));
    exit();
}

