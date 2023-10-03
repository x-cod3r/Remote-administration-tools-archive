<?php
session_start();
if (isset($_SESSION['login'])) {
    if (!$_SESSION['login'] == '1') {
        header('location: index.php');
    }
} else {
    header('location: index.php');
}
if (isset($_POST['checkedvalue'])) {
    include('Information.php');
    $name = $_POST['checkedvalue'];
    $commandLine = $_POST['CommandLine'];
    if ($commandLine == '') {
        header("location: panel.php?errcl");
    }
    foreach ($name as $ipaddress1) {
        $conn = new mysqli($servername, $username, $password, $dbname);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $sql = "INSERT INTO sendcl (ip, command)
        VALUES ('$ipaddress1', '$commandLine')";
        $state = '';
        if ($conn->query($sql) === TRUE) {
            $state = '1';
        } else {
            $state = '2';
        }
        $conn->close();
        if ($state == '2') {
            header("location: panel.php?errcl");
        } else {
            header("location: panel.php");
        }
    }
} elseif (!isset($_POST['checkedvalue'])) {
    header("location: panel.php?errvc");
}

?>