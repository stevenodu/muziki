<?php
$servername = "localhost";
$username = "myapp";
$password = "Quest@2040";
$dbname = "music";

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
