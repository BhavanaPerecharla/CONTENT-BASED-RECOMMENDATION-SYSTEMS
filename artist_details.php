<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Details</title>
    <link rel="stylesheet" href="artistdetails.css"> <!-- Assuming you have a separate stylesheet -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Artist Details</h1>

        <div id="artist-details">
            <?php
            // Include database connection details and fetch artist details dynamically.
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "Profiles"; // Change this to your actual DB name.

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Retrieve the artist ID from the URL
            $artistID = isset($_GET['ID']) ? $_GET['ID'] : 1;  // Default to 1 if no ID is given

            // Fetch artist details
            $sql = "SELECT * FROM Bio WHERE ID = $artistID";
            $result = $conn->query($sql);

            // Check if artist exists
            if ($result->num_rows > 0) {
                $artist = $result->fetch_assoc();
                echo "
                    <h2>" . htmlspecialchars($artist['Name']) . "</h2>
                    <p><strong>Profession:</strong> " . htmlspecialchars($artist['Profession']) . "</p>
                    <p><strong>Born:</strong> " . htmlspecialchars($artist['Born']) . "</p>
                    <p><strong>Birthplace:</strong> " . htmlspecialchars($artist['BirthPlace']) . "</p>
                    <p><strong>Nationality:</strong> " . htmlspecialchars($artist['Nationality']) . "</p>
                    <p><strong>Debut Film:</strong> " . htmlspecialchars($artist['DebutFilm']) . "</p>
                    <p><strong>Awards:</strong> " . htmlspecialchars($artist['Awards']) . "</p>
                    <p><strong>Notable Works:</strong> " . htmlspecialchars($artist['NotableWorks']) . "</p>
                    <p><strong>Spouse:</strong> " . htmlspecialchars($artist['Spouse']) . "</p>
                    <p><strong>Children:</strong> " . htmlspecialchars($artist['Children']) . "</p>
                    <p><strong>Education:</strong> " . htmlspecialchars($artist['Education']) . "</p>
                    <p><strong>Height:</strong> " . htmlspecialchars($artist['Height']) . " meters</p>
                    <p><strong>Weight:</strong> " . htmlspecialchars($artist['Weight']) . " kg</p>
                    <p><strong>Eye Color:</strong> " . htmlspecialchars($artist['EyeColor']) . "</p>
                    <p><strong>Hair Color:</strong> " . htmlspecialchars($artist['HairColor']) . "</p>
                    <p><strong>Net Worth:</strong> $" . number_format($artist['NetWorth'], 2) . "</p>
                    <p><strong>Biography:</strong> " . htmlspecialchars($artist['Biography']) . "</p>
                ";
            } else {
                echo "<p>Artist details not found.</p>";
            }

            $conn->close();
            ?>
        </div>
    

        <!-- Button to go back to the main list -->
        <a href="art.php"><button>Back to List</button></a>
    </div>
</body>
</html>
