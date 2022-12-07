<?php
    
    $server = "localhost";  
    $username = "root";  
    $password = '';  
    $db_name = "motor gate";  
      
    $con = mysqli_connect($server, $username, $password, $db_name);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }   

?>
