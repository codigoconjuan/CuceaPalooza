<?php 
    $conn = new mysqli('localhost', 'root', 'root', 'cuceapalooza');
    
    if($conn->connect_error) {
      echo $error -> $conn->connect_error;
    }  

 ?>