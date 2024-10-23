<?php
session_start();
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Profiles";

try {
    // Create a new database connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check if the session variable for email is set
    if (isset($_SESSION['user_email'])) {
        $email = $_SESSION['user_email'];

        // Prepare SQL statement to fetch user details by email
        $stmt = $conn->prepare("SELECT name, email, phone, gender, age, location, dob, created_at FROM users WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        // Check if a user was found
        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();  // Fetch user data
        } else {
            echo "No user found with this email.";
            exit();
        }
    } else {
        // Redirect to login page if session not set
        header("Location: login.html?error=" . urlencode("You need to sign in first."));
        exit();
    }
} catch (mysqli_sql_exception $e) {
    error_log("Error fetching user profile: " . $e->getMessage());
    echo "An error occurred while fetching the profile.";
    exit();
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="Pstyles.css">
</head>
<body>
    <h1>Profile</h1>
    <p><strong>Name:</strong> <?php echo htmlspecialchars($user['name']); ?></p>
    
    <p><strong>Email:</strong> <?php echo htmlspecialchars($user['email']); ?></p>

    <p><strong>Phone:</strong> <?php echo htmlspecialchars($user['phone']); ?></p>

    <p><strong>Gender:</strong> <?php echo htmlspecialchars($user['gender']); ?></p>

    <p><strong>Age:</strong> <?php echo htmlspecialchars($user['age']); ?></p>

    <p><strong>Location:</strong> <?php echo htmlspecialchars($user['location']); ?></p>

    <p><strong>Date of Birth:</strong> <?php echo htmlspecialchars($user['dob']); ?></p>

    <p><strong>Account Created:</strong> <?php echo htmlspecialchars($user['created_at']); ?></p>

    <div class="button-container">
            <a href="indexs.php"><button>Return to Home</button></a>
        </div>
</body>
</html>
