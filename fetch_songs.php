<?php
// Uncomment this section and comment out the next .env section if you want to do a direct test with visible db credentials
// $servername = "e.glocalhost";
// $username = "dbusername";
// $password = "dbpassword";
// $dbname = "dbname";

// This db connection uses the .env to hid the database credentials.
// Kindly use this for prod. You can comment this part out and enable the block above if you're just testing.
require __DIR__ . '/vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$servername = $_ENV['DB_HOST'];
$username = $_ENV['DB_USER'];
$password = $_ENV['DB_PASS'];
$dbname = $_ENV['DB_NAME'];


// Attempt db connection
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT img, name, artist, music FROM songs";
$result = $conn->query($sql);

$songs = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $songs[] = $row;
    }
}
$conn->close();

header('Content-Type: application/json');
echo json_encode($songs);
?>
