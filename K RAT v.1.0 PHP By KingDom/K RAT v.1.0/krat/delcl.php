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
if (isset($_GET['i']) && isset($_GET['id'])) {
    $ipaddress = $_GET['i'];
    $id = $_GET['id'];
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql1 = "SELECT ID, ip, command FROM sendcl";
    $result1 = $conn->query($sql1);
    if ($result1->num_rows > 0) {
        while($row = $result1->fetch_assoc()) {
            if ($row['ip'] == $ipaddress && $row['ID'] == $id) {
                $sql = "DELETE FROM sendcl WHERE `ID`='$id'";
                if ($conn->query($sql) === TRUE) {
                    echo "Record deleted successfully";
                } else {
                    echo "Error deleting record: " . $conn->error;
                }
            }
        }
    } else {
        echo "0 results";
    }
    $conn->close();
}
?>