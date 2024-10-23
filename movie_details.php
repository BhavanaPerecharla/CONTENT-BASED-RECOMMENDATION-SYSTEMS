<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Details</title>
    <link rel="stylesheet" href="moviedetails.css">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Movie Details</h1>

        <div id="movie-details">
            <?php
            // Include database connection details and fetch movie details dynamically.
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

            // Retrieve the movie ID from the URL
            $movieID = isset($_GET['MovieID']) ? $_GET['MovieID'] : 1;  // Default to 1 if no ID is given

            // Fetch movie details
            $sql = "SELECT * FROM Movies WHERE MovieID = $movieID";
            $result = $conn->query($sql);

            // Check if movie exists
            if ($result->num_rows > 0) {
                $movie = $result->fetch_assoc();
                echo "
                    <h2>" . $movie['MovieName'] . " (" . $movie['YearReleased'] . ")</h2>
                    <p><strong>Genre:</strong> " . $movie['Genre'] . "</p>
                    <p><strong>Director:</strong> " . $movie['DirectorName'] . "</p>
                    <p><strong>Produced By:</strong> " . $movie['ProducerNames'] . "</p>
                    <p><strong>Written By:</strong> " . $movie['WrittenBy'] . "</p>
                    <p><strong>Starring:</strong> " . $movie['Starring'] . "</p>
                    <p><strong>Cinematography:</strong> " . $movie['Cinematography'] . "</p>
                    <p><strong>Edited By:</strong> " . $movie['EditedBy'] . "</p>
                    <p><strong>Music By:</strong> " . $movie['MusicBy'] . "</p>
                    <p><strong>Production Company:</strong> " . $movie['ProductionCompany'] . "</p>
                    <p><strong>Distributed By:</strong> " . $movie['DistributedBy'] . "</p>
                    <p><strong>Release Date:</strong> " . $movie['ReleaseDate'] . "</p>
                    <p><strong>Language:</strong> " . $movie['Language'] . "</p>
                    <p><strong>Country:</strong> " . $movie['Country'] . "</p>
                    <p><strong>Runtime:</strong> " . $movie['RunTime'] . " minutes</p>
                    <p><strong>Awards:</strong> " . $movie['Awards'] . "</p>
                    <p><strong>Box Office Status:</strong> " . $movie['BoxOfficeStatus'] . "</p>
                    <p><strong>Budget:</strong> $" . number_format($movie['Budget'], 2) . "</p>
                    <p><strong>Box Office Collection:</strong> $" . number_format($movie['BoxOfficeCollection'], 2) . "</p>
                    <p><strong>Rating:</strong> " . $movie['Rating'] . "/10</p>
                    <p><strong>Streaming At:</strong> " . $movie['StreamingAt'] . "</p>
                    <p><strong>Highlights:</strong> " . $movie['Highlights'] . "</p>
                    <p><strong>Description:</strong> " . $movie['Description'] . "</p>
                ";
            } else {
                echo "<p>Movie details not found.</p>";
            }

            $conn->close();
            ?>
        </div>
    

        <!-- Button to go back to the main list -->
        <a href="indexs.php"><button>Back to List</button></a>
    </div>
</body>
</html>
